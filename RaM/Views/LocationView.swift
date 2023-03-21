//
//  LocationView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct LocationView: View {
    @ObservedObject var locaviewModel = LocationViewModel()
    
    var body: some View {
        NavigationStack{
            List(locaviewModel.locations) { location in
                Text(String(location.id ?? 1))
                    .foregroundColor(.purple)
                Text(location.name ?? "")
                    .foregroundColor(.purple)
                font(.headline)
            }
        }
        .navigationTitle("Locations")
    }
}
struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
