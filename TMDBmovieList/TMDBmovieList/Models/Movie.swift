//
//  Movie.swift
//  TMDBmovieList
//
//  Created by Fedii Ihor on 25.01.2022.
//

import Foundation

struct Movie: Decodable {
    
    let id: Int
    let title: String
    let backdropPath: String?
    let posterPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    let runtime: Int?
    // let releaseDate: String?
}

struct MovieResponse: Decodable {
    let results: [Movie]
}
