//
//  MovieRealm.swift
//  TMDB URLSession JSON
//
//  Created by Артем Билый on 25.09.2022.
//

import Foundation
import RealmSwift


class MovieRealm: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var adult: Bool?
    @Persisted var backdropPath: String?
    @Persisted var title: String?
    @Persisted var originalLanguage: String?
    @Persisted var originalTitle: String?
    @Persisted var overview: String?
    @Persisted var posterPath: String?
    @Persisted var mediaType: String?
    @Persisted var genreIDS: List<Int>
    @Persisted var popularity: Double?
    @Persisted var releaseDate: String?
    @Persisted var video: Bool?
    @Persisted var voteAverage: Double?
    @Persisted var voteCount: Int?
    @Persisted var name: String?
    @Persisted var originalName: String?
    @Persisted var firstAirDate: String?
    @Persisted var originCountry: List<String?>
}

