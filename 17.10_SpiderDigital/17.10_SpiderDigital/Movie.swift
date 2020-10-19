//
//  Movie.swift
//  17.10_SpiderDigital
//
//  Created by Dominique Nascimento Bezerra on 17/10/20.
//

import Foundation

class Movie {
    var name: String
    var year: String
    var rating: String
    var genre: String
    var image: String
    
    init(name: String, year: String, rating: String, genre: String, image: String) {
        self.name = name
        self.year = year
        self.rating = rating
        self.genre = genre
        self.image = image
    }
}
