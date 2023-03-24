//
//  CharacterListView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI
import CoreData
import Foundation

final class CharacterListView: View {
    @ObservedObject var viewModel: CharacterViewModel
    @State var isLoading = false
    
    init(viewModel: CharacterViewModel){
        self.viewModel = viewModel
        viewModel.fetchCharacters()
    }
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
            } else {
                NavigationView{
                    List(viewModel.characters) {character in
                        NavigationLink( character.name ?? "",
                                        destination: CharacterDetail(viewModel: self.viewModel, characters: character))
                        if character.image != nil {
                            let imageLoader = ImageLoader()
                            Image(uiImage: imageLoader.image ?? UIImage())
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        } else {
                            Image(systemName: "person")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        }
                    }
                }
                .navigationTitle("List of all Characters")
            }
        }
    }
}
struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView(viewModel: CharacterViewModel())
    }
}
