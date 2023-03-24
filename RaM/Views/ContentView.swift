//
//  ContentView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//
//
//import CoreData
//import SwiftUI
//
//struct ContentView: View {
//    @State private var favoritID: UUID = UUID()
//    @FetchRequest(sortDescriptors: []) var favorits: FetchedResults<Favorit>
//    @ObservedObject var viewModel = CharacterViewModel()
//    @ObservedObject var episodeViewModel = EpisodeViewModel()
//    @State var characters: CharacterData = CharacterData()
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                NavigationLink(destination: CharacterListView(viewModel: viewModel)) {
//                    Text("Characters")
//                        .foregroundColor(.black)
//                }
//                NavigationLink(destination: LocationView()) {
//                    Text("Locations")
//                        .background(TheGradient())
//                        .foregroundColor(.black)
//                }
//                NavigationLink(destination: EpisodeView(episodeViewModel: episodeViewModel)) {
//                    Text("Episodes")
//                        .background(TheGradient())
//                        .foregroundColor(.black)
//                }
//                NavigationLink(destination: FavoritView()) {
//                    TheGradient()
//                        .foregroundColor(.black)
//                }
//            }
//            .padding()
//        }
//    }
//}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, NSManagedObjectContext())
//    }
//}
import CoreData
import SwiftUI

struct ContentView: View {
    @State private var favoritID: UUID = UUID()
    @FetchRequest(sortDescriptors: []) var favorits: FetchedResults<Favorit>
    @ObservedObject var viewModel = CharacterViewModel()
    @ObservedObject var episodeViewModel = EpisodeViewModel()
    @State var characters: CharacterData = CharacterData()
    
    // Define the tab selection state
    @State private var selection = 0
    
    var body: some View {
        // Use a TabView to display different views for each tab
        TabView(selection: $selection) {
            // The first tab is for Characters
            NavigationView {
                CharacterListView(viewModel: viewModel)
                    .navigationBarTitle("Characters")
            }
            .tabItem {
                Label("Characters", systemImage: "person.3")
            }
            .tag(0) // Assign a tag to identify the tab
            
            // The second tab is for Locations
            NavigationView {
                LocationView()
                    .navigationBarTitle("Locations")
            }
            .tabItem {
                Label("Locations", systemImage: "signpost.right.and.left")
            }
            .tag(1) // Assign a tag to identify the tab
            
            // The third tab is for Episodes
            NavigationView {
                EpisodeView(episodeViewModel: episodeViewModel)
                    .navigationBarTitle("Episodes")
            }
            .tabItem {
                Label("Episodes", systemImage: "tv")
            }
            .tag(2) // Assign a tag to identify the tab
            
            // The fourth tab is for Favorites
            NavigationView {
                FavoritView()
                    .navigationBarTitle("Favorites")
            }
            .tabItem {
                Label("Favorites", systemImage: "heart.fill")
            }
            .tag(3) // Assign a tag to identify the tab
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, NSManagedObjectContext())
    }
}
