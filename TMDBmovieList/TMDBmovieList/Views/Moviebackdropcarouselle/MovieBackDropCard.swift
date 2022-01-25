//
//  MovieBackDropCard.swift
//  TMDBmovieList
//
//  Created by Fedii Ihor on 25.01.2022.
//

import SwiftUI

//MARK: - обьект для карусели

struct MovieBackDropCard: View {
    
    let movie: Movie
    @ObservedObject var imageLoader = ImageLoader()
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle().fill(Color.gray.opacity(0.3))
                if self.imageLoader.image != nil {
                    Image(uiImage: self.imageLoader.image!)
                        .resizable()
                }
            }
            .aspectRatio(16/9, contentMode: .fit)
            .cornerRadius(10)
            .shadow(radius: 5)
            Text(movie.title)
        }.onAppear {
            self.imageLoader.loadImage(with: self.movie.backdropURL)
        }
    }
}

struct MovieBackDropCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieBackDropCard(movie: Movie.stubbedMovie)
    }
}
