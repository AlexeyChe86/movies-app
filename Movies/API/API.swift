//
//  API.swift
//  Movies
//
//  Created by  Алексей Черебаев on 2/1/20.
//  Copyright © 2020  Алексей Черебаев. All rights reserved.
//

import Foundation
import Alamofire

private let baseURL = "https://api.themoviedb.org/3/movie/"
let posterURL = "https://image.tmdb.org/t/p/original"
let apiKey = "43209815cb22960340fb54ce4d36a4d4"
private let coder = JSONDecoder()

class API {
    
    class func fetchPopularMovies(_ page: Int, onSuccess: @escaping (Results) -> Void) {
        coder.keyDecodingStrategy = .convertFromSnakeCase
        let urlStr = "\(baseURL)popular?api_key=\(apiKey)&page=\(page)"
        guard let url = URL(string: urlStr) else { fatalError("Unable get url") }
        AF.request(url).response { response in
            switch response.result {
            case .success(let data):
                guard let data = data else { fatalError("Unable to parse data from api") }
                guard let results = try? coder.decode(Results.self, from: data) else { fatalError("Unable to parse data in to json") }
                DispatchQueue.main.async {
                    onSuccess(results)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
