//
//  MoviesResponse.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//


import Foundation

/// Movies response handler (JSON parsing).
enum MoviesResponse {
    case success(movies: [Movie])
    case failed(error: ApiErrorType)

    /// Parses data from API response.
    ///
    /// - Parameter jsonData: JSON as Data
    /// - Returns: MoviesResponse
    static func parse(_ jsonData: Data) -> MoviesResponse {
        guard let results = MoviesResults(data: jsonData) else {
            debugPrint("💥 DECODING ERROR: MoviesResults")
            return .failed(error: .parseError)
        }
        return .success(movies: results.movies)
    }
}

