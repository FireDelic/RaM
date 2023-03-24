//
//  CharacterStatus.swift
//  RaM
//
//  Created by Fahir Delic on 24.03.23.
//

import Foundation

enum CharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
