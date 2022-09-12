//
//  Data.swift
//  CompositionalLayout
//
//  Created by Артем Билый on 10.09.2022.
//

import Foundation

struct Data {
    
    static let shared = Data()
    
    private let marvel: ListSection = {
        .marvel([.init(image: "america"),
                 .init(image: "hulk"),
                 .init(image: "spider"),
                 .init(image: "iron"),
                 .init(image: "strange")])
                }()
    
    private let dc: ListSection = {
        .dc([.init(image: "woman"),
             .init(image: "flash"),
             .init(image: "super"),
             .init(image: "batman"),
             .init(image: "aquaman")])
    }()
    
    var pageData: [ListSection] {
        [marvel, dc]
    }
}
                
