//
//  CharacterImageView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//
//
import SwiftUI
import Foundation

struct CharacterImageView: View {
    @ObservedObject var viewModel: CharacterViewModel
    
    var body: some View {
        VStack{
            Text("hi ich binn hji")
        }
//        if let imageUrl = viewModel.characters.image {
//            ImageLoader(urlString: imageUrl)
//        } else {
//            Image(systemName: "person.fill")
//        }
    }
}

struct CharacterImageView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterImageView(viewModel: CharacterViewModel())
    }
}
