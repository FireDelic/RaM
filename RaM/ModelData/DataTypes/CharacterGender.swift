//
//  CharacterGender.swift
//  RaM
//
//  Created by Fahir Delic on 24.03.23.
//

import Foundation

enum CharacterGender: String, Codable {
//  'Female', 'Male', 'Genderless' or 'unknown'
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
