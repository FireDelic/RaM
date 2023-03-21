//
//  EpisodeData.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import Foundation
import SwiftUI

struct EpisodeData: Identifiable, Codable, Hashable {
    
    var id: Int?
    var name: String?
    var air_date: String?
    var episode: String?
    var characters: [URL]?
    var url: String?
    var created: String?
    
}
