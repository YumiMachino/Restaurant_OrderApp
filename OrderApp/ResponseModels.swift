//
//  ResponseModels.swift
//  OrderApp
//
//  Created by Yumi Machino on 2021/01/16.
//

import Foundation

// data type to be retrieved from the server

struct MenuResponse: Codable {
    var items: [MenuItem]
}

struct CategoriesResponse: Codable {
    let categories: [String]
}

struct OrderResponse: Codable{
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
