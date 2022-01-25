//
//  MovieBackdropCarouseleView.swift
//  TMDBmovieList
//
//  Created by Fedii Ihor on 25.01.2022.
//

import SwiftUI

struct MovieBackdropCarouseleView: View {
    
    let title: String
    let movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading , spacing: 0) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16){
                    ForEach(self.movies) { movie in
                        MovieBackDropCard(movie: movie)
                            .frame(width: 272, height: 200)
                            .padding(.leading , movie.id == self.movies.first!.id ? 16 : 0)
                            .padding(.trailing, movie.id == self.movies.first?.id ? 16 : 0)
                }
            }
         }
      }
   }
}


struct MovieBackdropCarouseleView_Previews: PreviewProvider {
    static var previews: some View {
        MovieBackdropCarouseleView(title:"Latest", movies: Movie.stubbedMovies)
    }
}
