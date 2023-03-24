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
        List(viewModel.characters, id: \.id) { character in
                if let imageUrl = character.image {
                    let imageLoader = ImageLoader()
                    Image(uiImage: (imageLoader.image ?? UIImage()))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .cornerRadius(10)
                } else {
                    Image(systemName: "person.fill")
                }
            }
        }
    }
struct CharacterImageView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterImageView(viewModel: CharacterViewModel())
    }
}
