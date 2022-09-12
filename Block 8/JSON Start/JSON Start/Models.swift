//
//  Models.swift
//  JSON Start
//
//  Created by Артем Билый on 12.09.2022.
//

import Foundation

/*
●Первая модель Company содержит: count: Int, companyDescription: String, listOfData: [Device]
●Device содержит: name: String, modelNumber: String, countries: [String], price: PriceInfo, year: Int
●PriceInfo содержит: regions: [RegionPrice]
●RegionPrice содержит: name: String, price: Int
*/


struct Company: Codable {
    var count: Int
    var companyDescription: String
    var listOfData: [Model]
}

struct Model: Codable {
    var name: String
    var modelNumber: String
    var countries: [String]
    var price: PriceInfo
    var year: Int
}

struct PriceInfo: Codable {
    var regions: [RegionPrice]
}

struct RegionPrice: Codable {
    var name: String
    var price: Int
}
