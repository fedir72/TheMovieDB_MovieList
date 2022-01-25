//
//  ImageLoader.swift
//  TMDBmovieList
//
//  Created by Fedii Ihor on 25.01.2022.
//

import SwiftUI
import UIKit

private let _imageCashe = NSCache<AnyObject,AnyObject>()

class ImageLoader: ObservableObject {
    
    @Published var image: UIImage?
    @Published var isLoading = false
    
    var imageCashe = _imageCashe
    
    func loadImage(with url: URL) {
        let urlString = url.absoluteString
        if let imageFromCash = imageCashe.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = imageFromCash
            return
        }
        
        DispatchQueue.global(qos: .background).async {[weak self] in
            guard let self = self else {return}
            do {
                let data = try Data(contentsOf: url)
                guard let image = UIImage(data: data) else {return}
                DispatchQueue.main.async { [weak self] in
                    self?.image = image
                }
            } catch {
                print(error.localizedDescription)
            }
        }
            
    }
}
