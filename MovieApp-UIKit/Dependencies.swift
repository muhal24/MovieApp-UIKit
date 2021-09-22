//
//  Dependencies.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//

import Foundation

final class Dependencies {

    static let shared = Dependencies()

    var api: TheMovieDBApi

    init() {
        let apiManager = APIManager(session: URLSession(configuration: .default))
        self.api = TheMovieDBApi(manager: apiManager)
    }
}
