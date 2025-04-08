//
//  RecommendedMenuModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import Foundation

struct CoffeeMenuModel: Identifiable, ImageCardDisplayable {
    let id: UUID
    let name: String
    let imageName: String

    init(id: UUID = UUID(), name: String, imageName: String) {
        self.id = id
        self.name = name
        self.imageName = imageName
    }
}
