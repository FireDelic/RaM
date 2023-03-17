//
//  ContentView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = CharacterViewModel()
    @ObservedObject var episodeViewModel = EpisodeViewModel()
    @State var characters: CharacterData = CharacterData()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: CharacterListView(viewModel: viewModel)) {
                    Text("Characters")
                    RoundedRectangle(cornerRadius: 10)
                        .background(TheGradient())
                        .foregroundColor(.black)
                    NavigationLink(destination: LocationView()) {
                        Text("Locations")
                            .background(TheGradient())
                            .foregroundColor(.black)
                        
                    }
                    NavigationLink(destination: EpisodeView(episodeViewModel: episodeViewModel)) {
                        Text("Episodes")
                            .background(TheGradient())
                            .foregroundColor(.black)
                    }
                    NavigationLink(destination: FavoritView()) {
                        Text("Favorites")
                            .background(TheGradient()
                                .foregroundColor(.black))
                    }
                }
                .padding(10)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
