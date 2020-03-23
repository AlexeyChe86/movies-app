//
//  Results.swift
//  Movies
//
//  Created by  Алексей Черебаев on 2/1/20.
//  Copyright © 2020  Алексей Черебаев. All rights reserved.
//

import Foundation

struct Results: Codable {
    let results: [Movie]
    let page: Int
    let totalPages: Int
    let totalResults: Int
}
