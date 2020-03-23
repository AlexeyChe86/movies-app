//
//  MovieCollectionViewCell.swift
//  Movies
//
//  Created by  Алексей Черебаев on 2/1/20.
//  Copyright © 2020  Алексей Черебаев. All rights reserved.
//

import UIKit
import Kingfisher

class MovieCollectionViewCell: UICollectionViewCell {
    
    var movie: Movie? {
        didSet {
            if let movie = movie {
                movieImage.kf.setImage(with: movie.posterPath.url)
            }
        }
    }
    
    @IBOutlet private weak var movieImage: UIImageView!
}

extension String {
    var url: URL? {
        return URL(string: "\(posterURL)\(self)")
    }
}
