//
//  CircleImage.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image = Image("splash")
    
    var body: some View {
        image
            .clipShape(Circle())
            .frame(height: 300)
            .overlay{
                Circle().stroke(.white, lineWidth: 9)
            }
            .shadow(color: .green, radius: 18)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
