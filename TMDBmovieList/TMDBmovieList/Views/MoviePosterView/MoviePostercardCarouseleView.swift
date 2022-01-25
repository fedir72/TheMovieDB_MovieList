//
//  MoviePostercardCarouseleView.swift
//  TMDBmovieList
//
//  Created by Fedii Ihor on 25.01.2022.
//

import SwiftUI

struct MoviePostercardCarouseleView: View {
    
    let title: String
    let movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(self.movies) { movie in
                        MoviePosterCard(movie: movie)
                            .padding(.leading, movie.id == self.movies.first?.id ? 16 : 0)
                            .padding(.trailing, movie.id == self.movies.first?.id ? 16 : 0)
                    }
                }
            }
        }
    }
}

struct MoviePostercardCarouseleView_Previews: PreviewProvider {
    static var previews: some View {
        MoviePostercardCarouseleView(title: "Now playing", movies: Movie.stubbedMovies)
    }
}