//
//  RaMAPIService.swift
//  RaM
//
//  Created by Fahir Delic on 24.03.23.
//

import Foundation

// Primary API Service Object to get Data from the Rick and Morty API
final class RaMAPIService {
    // Shared singleton instance
    static let shared = RaMAPIService()
    
    private init() {}
    
    enum RaMServiceError : Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    public func execute<T: Codable> (
        _ request: RaMAPIRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RaMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RaMServiceError.failedToGetData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from ramRequest: RaMAPIRequest) -> URLRequest? {
        guard let url = ramRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = ramRequest.httpMethod
        return request
    }
}
