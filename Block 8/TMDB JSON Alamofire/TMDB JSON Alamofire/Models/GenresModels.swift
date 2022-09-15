// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let genres = try? newJSONDecoder().decode(Genres.self, from: jsonData)

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
