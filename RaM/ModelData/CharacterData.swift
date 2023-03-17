//
//  CharacterData.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import Foundation
import CoreData

struct CharacterData: Identifiable, Codable, Hashable {
    
    var id: Int?
    var name: String?
    var status: String?
    var species: String?
    var type: String?
    var gender: String?
    var origin: Origin?
    var location: Location?
    var image: String?
    var episode: [String]?
    var url: String?
    var created: String?
    
}

struct Origin: Codable, Hashable {
    var name: String?
    var url: String?
}

struct Location: Codable, Hashable {
    var name : String?
    var url: String?
}

