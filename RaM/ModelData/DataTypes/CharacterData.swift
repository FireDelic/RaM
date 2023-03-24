//
//  CharacterData.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import Foundation
import SwiftUI

struct CharacterData: Identifiable, Codable, Hashable {
    
    let id: Int?
    let name: String?
    let status: CharacterStatus?
    let species: String?
    let type: String?
    let gender: CharacterGender?
    let origin: Origin?
    let location: CharacterLocation?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
    var isFavorite: Bool? = false
    
    }
