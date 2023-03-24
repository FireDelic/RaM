//
//  CharacterView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct CharacterView: View {
    @ObservedObject var viewModel: CharacterViewModel
    @ObservedObject var imageLoader: ImageLoader
    @State var character: CharacterData
    var body: some View {
        VStack(alignment: .leading) {
            if let image = imageLoader.image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
            } else {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
            }
            Text(character.name ?? "")
                .font(.headline)
            Text(character.status ?? "")
                .font(.subheadline)
        }
//        .onAppear {
//            if let imageUrl = viewModel.character.image {
//                imageLoader.loadImage(urlString: imageUrl)
//            }
        }
    }

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(viewModel: CharacterViewModel(), imageLoader: ImageLoader(), character: CharacterData())
    }
}

    
    
    //        ZStack {
    //            CharacterImageView(urlString: character.image ?? "rickinBad")
    //                .position(x: 175, y: 150)
    //                .padding()
    //                .shadow(color: .black, radius: 20)
    //
    //            VStack {
    //                Text(character.name ?? "Rick Sanchez")
    //                    .font(.largeTitle)
    //                    .shadow(color: .red, radius: 5)
    //                    .foregroundColor(.green)
    //                    .fontDesign(.monospaced)
    //                    .fontWeight(.heavy)
    //                    .multilineTextAlignment(.leading)
    //                Text(character.gender ?? "Male")
    //                    .font(Font.title)
    //                    .fontWeight(.heavy)
    //                Text(character.status ?? "alive")
    //                    .fontWeight(.heavy)
    //                    .font(.subheadline)
    //                    .edgesIgnoringSafeArea(.all)
    //                Text(character.species ?? "Human")
    //                    .fontWeight(.heavy)
    //                    .font(.subheadline)
    //                    .edgesIgnoringSafeArea(.all)
    //                Text(character.type ?? "Human")
    //                    .fontWeight(.heavy)
    //                    .font(.subheadline)
    //                    .edgesIgnoringSafeArea(.all)
    //
    //                Text("About: " + (character.name ?? "Rick Sanchez"))
    //                    .font(Font.title2)
    //                    .foregroundColor(.green)
    //                    .fontWeight(.heavy)
    //            }
