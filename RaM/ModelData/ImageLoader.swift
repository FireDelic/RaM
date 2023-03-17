//
//  ImageLoader.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import Foundation
import UIKit


class ImageLoader: ObservableObject {
    @Published var image: UIImage? = nil
    
    init(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
        task.resume()
    }
}
