//
//  CharacterImageView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct CharacterImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(withURL url: String) {
        imageLoader = ImageLoader(urlString: url)
    }
    
    var body: some View {
        Image(uiImage: imageLoader.image != nil ? imageLoader.image! : UIImage(named: "splash")!)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct CharacterImageView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterImageView(withURL: "https://rickandmortyapi.com/api")
    }
}
