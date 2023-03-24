//
//  LocationData.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI
import Foundation

struct LocationData: Codable, Hashable, Identifiable {
    
    let id: Int?
    let name: String?
    let type: String?
    let dimension: String?
    let residents: [URL]?
    let url: String?
    let created: String?
    
}
