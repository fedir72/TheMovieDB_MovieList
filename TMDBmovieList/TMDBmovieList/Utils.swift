//
//  Utils.swift
//  TMDBmovieList
//
//  Created by Fedii Ihor on 25.01.2022.
//

import Foundation

class Utils {
 static let jsonDecoder: JSONDecoder = {
    let jDecoder = JSONDecoder()
     jDecoder.keyDecodingStrategy = .convertFromSnakeCase
     jDecoder.dateDecodingStrategy = .formatted(dateFormatter)
    return jDecoder
}()
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-mm-dd"
        return formatter
    }()
}
