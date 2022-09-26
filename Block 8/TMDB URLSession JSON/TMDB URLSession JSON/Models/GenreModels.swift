//
//  GenreModels.swift
//  TMDB JSON URLSession
//
//  Created by Артем Билый on 21.09.2022.
//

import Foundation

// MARK: - Genres
struct Genres: Codable {
    let genres: [Genre]
}

// MARK: - Genre
struct Genre: Codable {
    let id: Int
    let name: String
}
