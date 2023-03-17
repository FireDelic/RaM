//
//  FavoritView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct FavoritView: View {
    @ObservedObject var viewModel = CharacterViewModel()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FavoritView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritView()
    }
}
