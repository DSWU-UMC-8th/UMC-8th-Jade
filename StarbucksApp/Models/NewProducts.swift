//
//  NewProducts.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import Foundation

struct NewProducts: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let size: String
}

let newProducts: [NewProducts] = [
    .init(imageName: "new_products1", title: "그린 사이렌 도트 머그", size: "237ml"),
    .init(imageName: "new_products2", title: "그린 사이렌 도트 머그", size: "355ml"),
    .init(imageName: "new_products3", title: "홈 카페 미니 머그 세트", size: ""),
    .init(imageName: "new_products4", title: "홈 카페 글라스 세트", size: "")
]
