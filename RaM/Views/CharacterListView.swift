//
//  CharacterListView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI
import CoreData

struct CharacterListView: View {
    @StateObject var viewModel: CharacterViewModel
    
    var body: some View {
        List(viewModel.characters) {character in
            NavigationLink( character.name ?? "", destination: CharacterDetail(characters: character))
            RoundedRectangle(cornerRadius: 25)
                .frame(minWidth: 300)
                .cornerRadius(20)
                .groupBoxStyle(.automatic)
        }
        .navigationTitle("List of all Characters")
    }
}
struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView(viewModel: CharacterViewModel())
    }
}

