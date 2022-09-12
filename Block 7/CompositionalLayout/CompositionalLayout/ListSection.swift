//
//  ListSection.swift
//  CompositionalLayout
//
//  Created by Артем Билый on 10.09.2022.
//

import Foundation

enum ListSection {
    
    case marvel([ListItem])
    case dc([ListItem])
    
    var items: [ListItem] {
        switch self {
        case .marvel(let items):
            return items
        case .dc(let items):
            return items
        }
    }
    
    var count: Int {
        items.count
    }
    
    var title: String {
        switch self {
        case .marvel(_):
            return "Marvel"
        case .dc(_):
            return "DC"
        }
    }
}
