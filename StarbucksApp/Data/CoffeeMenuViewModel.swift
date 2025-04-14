//
//  RecommendedMenuViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import Foundation

class CoffeeMenuViewModel: ObservableObject {
    @Published var items: [CoffeeMenuModel] = [
        CoffeeMenuModel(name: "에스프레소 콘파나", imageName: "coffee_conpanna"),
        CoffeeMenuModel(name: "에스프레소 마키아또", imageName: "coffee_macchiato"),
        CoffeeMenuModel(name: "아이스 카페 아메리카노", imageName: "coffee_ice_americano"),
        CoffeeMenuModel(name: "카페 아메리카노", imageName: "coffee_americano"),
        CoffeeMenuModel(name: "아이스 카라멜 마키아또", imageName: "coffee_ice_caramel_macchiato"),
        CoffeeMenuModel(name: "카라멜 마키아또", imageName: "coffee_caramel_macchiato")
    ]
}
