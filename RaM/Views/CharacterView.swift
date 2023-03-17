//
//  CharacterView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct CharacterView: View {
    @ObservedObject var viewModel = CharacterViewModel()
    @State var character: CharacterData = CharacterData()
    
    
    var body: some View {
        ZStack {
            CharacterImageView(withURL: character.image ?? "")
                .position(x: 175, y: 150)
                .padding()
                .shadow(color: .black, radius: 20)
            
            VStack {
                Text(character.name ?? "Rick Sanchez")
                    .font(.largeTitle)
                    .shadow(color: .red, radius: 5)
                    .foregroundColor(.green)
                    .fontDesign(.monospaced)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                Text(character.gender ?? "Male")
                    .font(Font.title)
                    .fontWeight(.heavy)
                Text(character.status ?? "alive")
                    .fontWeight(.heavy)
                    .font(.subheadline)
                    .edgesIgnoringSafeArea(.all)
                Text(character.species ?? "Human")
                    .fontWeight(.heavy)
                    .font(.subheadline)
                    .edgesIgnoringSafeArea(.all)
                Text(character.type ?? "Human")
                    .fontWeight(.heavy)
                    .font(.subheadline)
                    .edgesIgnoringSafeArea(.all)
                
                Text("About: " + (character.name ?? "Rick Sanchez"))
                    .font(Font.title2)
                    .fontWeight(.heavy)
            }
        }
    }
    struct CharacterView_Previews: PreviewProvider {
        static var previews: some View {
            CharacterView()
        }
    }
}
