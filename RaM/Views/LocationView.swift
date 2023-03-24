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
        List(locaviewModel.locations) { location in
            LazyHStack(alignment: .firstTextBaseline){
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
