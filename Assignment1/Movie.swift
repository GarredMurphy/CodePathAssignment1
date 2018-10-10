//
//  Movie.swift
//  Assignment1
//
//  Created by LinuxPlus on 10/9/18.
//  Copyright © 2018 LinuxPlus. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterPath: String?
    var posterUrl: URL?
    var backdropPath: String?
    var backdropURL: URL?
    var overview: String
    var releaseDate: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No Overview"
        let baseURLString = "https://image.tmdb.org/t/p/w500"
        let posterPathString = dictionary["poster_path"] as? String
        if (posterPathString != nil)
        {
            self.posterUrl = URL(string: baseURLString + posterPathString!)!
            self.posterPath = posterPathString!
        }
        let backdropPathString = dictionary["backdrop_path"] as? String
        if (backdropPathString != nil)
        {
            self.backdropURL = URL(string: baseURLString + backdropPathString!)!
            self.backdropPath = backdropPathString!
        }
        
        self.releaseDate = dictionary["release_date"] as? String ?? "unknown"
        
        // Set the rest of the properties
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
    
}
