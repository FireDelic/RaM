//
//  FavoritView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct FavoritView: View {
    @FetchRequest(sortDescriptors: []) var favorits: FetchedResults<Favorit>
    
    var body: some View {
        VStack {
            List(favorits) { favorit in
                Text(favorit.name ?? "Error")
            }
        }
    }
}
struct FavoritView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritView()
    }
}
