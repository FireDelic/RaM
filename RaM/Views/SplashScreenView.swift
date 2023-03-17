//
//  SplashScreenView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI
import Foundation

struct SplashScreenView: View {
    var body: some View {
        VStack {
            
            Image("ramTitle")
                .opacity(0.9)
            Text("see the documentation here")
                .font(.footnote)
            Link(destination: URL(string: "https://rickandmortyapi.com/documentation")!) {
                Text("- The Rick and Morty API -")
            }
        }
    }
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
