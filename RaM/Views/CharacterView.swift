//
//  CharacterView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct CharacterView: View {
    var character: CharacterData
    @ObservedObject var imageLoader: ImageLoader
    var body: some View {
        
        if imageLoader.image != nil {
            Image(uiImage: UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .cornerRadius(10)
        }
        VStack(alignment: .leading) {
            Text(character.name ?? "Unknown")
                .font(.headline)
            Text(character.status ?? "'/WERT#")
                .font(.subheadline)
        }
    }
    func loadImage(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { data, response, error in
            if error == nil && data != nil {
                DispatchQueue.main.async {
                    loadImage(urlString: urlString)
                }
            }
        }
        dataTask.resume()
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

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(character: CharacterData(), imageLoader: ImageLoader())
    }
}
