//
//  EpisodeData.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import Foundation
import SwiftUI

struct EpisodeData: Identifiable, Codable, Hashable {
    
    let id: Int?
    let name: String?
    let air_date: String?
    let episode: String?
    let characters: [String]?
    let url: String?
    let created: String?
    
}
