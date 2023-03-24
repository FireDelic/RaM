//
//  RaMAPIRequest.swift
//  RaM
//
//  Created by Fahir Delic on 24.03.23.
//

import Foundation

final class RaMAPIRequest {
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RaMAPIEndpoint
    
    private let callComponents: [String]
    
    private let searchParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !callComponents.isEmpty {
            callComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !searchParameters.isEmpty {
            string += "?"
            let argumentString = searchParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
        
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    
    
    public init(
        endpoint: RaMAPIEndpoint,
        callComponents: [String] = [],
        searchParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.callComponents = callComponents
        self.searchParameters = searchParameters
    }
}

extension RaMAPIRequest {
        static let listCharactersRequest = RaMAPIRequest(endpoint: .character)
    }

