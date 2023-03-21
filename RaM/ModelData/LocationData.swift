//
//  LocationData.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI
import Foundation

struct LocationData: Codable, Hashable, Identifiable {
    
    var id: Int?
    var name: String?
    var type: String?
    var dimension: String?
    var residents: [URL]?
    var url: String?
    var created: String?
    
}
