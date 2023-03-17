//
//  TheGradient.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct TheGradient: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [Color(.purple), Color(.green)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        Button(action:{}) {
            Text("Characters")
                .padding()
        }
        .background(Capsule()
            .stroke(gradient, lineWidth: 3)
            .saturation(1.8))
    }
}

struct Previews_TheGradient_Previews: PreviewProvider {
    static var previews: some View {
        TheGradient()
    }
}
