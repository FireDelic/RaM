//
//  LocationViewModel.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import Foundation
import SwiftUI

@MainActor class LocationViewModel: ObservableObject {
    @Published var locations = [LocationData]()
    
    init(){
        fetchLocations(completion: { locationData in
            self.locations = locationData
        })
    }
    
    
    let baseUrl = "https://rickandmortyapi.com/api/"
    func fetchLocations(completion: @escaping([LocationData]) -> Void){
        
        let url = URL(string: baseUrl +
                      "location/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46")
        guard url != nil else {return}
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { data, response, error in
            if error == nil && data != nil {
                let decoder = JSONDecoder()
                do{
                    let locationData = try decoder.decode([LocationData].self, from: data!)
                    DispatchQueue.main.async {
                        completion(locationData)
                    }
                    
                } catch let error {
                    print("ERROR parsing json")
                    print(error)
                }
            }
        }
        dataTask.resume()
    }
}
