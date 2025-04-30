//
//  Product.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import Foundation

struct AllProducts: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}

let allProducts: [AllProducts] = [
    .init(imageName: "tumbler", title: "텀블러"),
    .init(imageName: "coffee_kit", title: "커피 용품"),
    .init(imageName: "gift_set", title: "선물세트"),
    .init(imageName: "thermos", title: "보온병"),
    .init(imageName: "mug", title: "머그/컵"),
    .init(imageName: "life_style", title: "라이프스타일")
]
