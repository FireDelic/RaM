//
//  CharacterListView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI
import CoreData

struct CharacterListView: View {
    @ObservedObject var viewModel: CharacterViewModel
    
    var body: some View {
        NavigationView{
            List(viewModel.characters) {character in
                NavigationLink( character.name ?? "", destination: CharacterDetail(characters: character))
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

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView(viewModel: CharacterViewModel())
    }
}
