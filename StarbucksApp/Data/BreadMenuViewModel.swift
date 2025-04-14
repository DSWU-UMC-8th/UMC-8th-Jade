//
//  BreadMenuViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import Foundation

final class BreadMenuViewModel: ObservableObject {
    @Published var items: [BreadMenuModel] = [
        BreadMenuModel(name: "너티 크루아상", imageName: "bread_nutty_croissant"),
        BreadMenuModel(name: "매콤 소시지 불고기", imageName: "bread_spicy_sausage_bulgogi"),
        BreadMenuModel(name: "미니 리프 파이", imageName: "bread_mini_leaf_pie"),
        BreadMenuModel(name: "뺑 오 쇼콜라", imageName: "bread_pain_au_chocolat"),
        BreadMenuModel(name: "소시지&올리브 파이", imageName: "bread_sausage_olive_pie")
    ]
}
