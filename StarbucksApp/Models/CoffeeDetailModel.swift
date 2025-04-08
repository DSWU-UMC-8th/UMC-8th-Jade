//
//  CoffeeDetailModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import Foundation

enum CoffeeType: String, CaseIterable {
    case iced = "ICED"
    case hot = "HOT"
}

struct CoffeeDetailModel: Identifiable {
    let id = UUID()
    let nameKor: String
    let nameEng: String
    let description: String
    let price: Int
    let imageName: String
    let types: [CoffeeType]
}
