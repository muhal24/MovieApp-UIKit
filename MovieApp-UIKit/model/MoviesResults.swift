//
//  MoviesResults.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//

import Foundation

struct MoviesResults {
    
    let movies: [Movie]
}

extension MoviesResults: Decodable {

    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }

    init?(data: Data) {
        guard let me = try? JSONDecoder.theMovieDB.decode(MoviesResults.self, from: data) else { return nil }
        self = me
    }
}
