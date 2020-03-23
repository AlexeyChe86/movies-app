//
//  Movie.swift
//  Movies
//
//  Created by  Алексей Черебаев on 2/1/20.
//  Copyright © 2020  Алексей Черебаев. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let id: Int
    let title: String
    let overview: String
    let posterPath: String
    let backdropPath: String
    let voteCount: Int
    let voteAverage: Double
    let releaseDate: String
}
