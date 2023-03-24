//
//  CharacterDetail.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct CharacterDetail: View {
    @ObservedObject var viewModel: CharacterViewModel
    @State var characters: CharacterData
    
    var body: some View {
        ZStack {
            CircleImage()
                .padding(.bottom, 200 )
            
            VStack(alignment: .center) {
                Text(characters.name ?? "")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .fontWidth(.compressed)
                HStack {
                    Text(characters.status?.rawValue.capitalized ?? "Alive")
                        .fontWeight(.bold)
                    Spacer()
                    Text(characters.species ?? "Human")
                        .fontWeight(.bold)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                
                Text("About: " + "\(characters.name ?? "Rick Sanchez")")
                    .font(.title2)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(viewModel: CharacterViewModel(), characters: CharacterData(id: 0, name: "Rick Sanchez", status: CharacterStatus(rawValue: "Alive"), species: "Human", type: "Human", gender: CharacterGender(rawValue: "Male"), origin: CharacterOrigin, location: CharacterLocation, image: "", episode: [String]?, url: String?, created: String?))
    }
}
