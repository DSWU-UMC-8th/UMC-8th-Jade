//
//  BestItem.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import Foundation

struct BestItems: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let size: String
}

let bestItems: [BestItems] = [
    .init(imageName: "best_item1", title: "그린 사이렌 슬리브 머그", size: "355ml"),
    .init(imageName: "best_item2", title: "그린 사이렌 클래식 머그", size: "355ml"),
    .init(imageName: "best_item3", title: "사이렌 머그 앤 우드 소서", size: ""),
    .init(imageName: "best_item4", title: "리저브 골드 테일 머그", size: ""),
    .init(imageName: "best_item5", title: "블랙 앤 골드 머그", size: "473ml"),
    .init(imageName: "best_item6", title: "블랙 링 머그", size: "355ml"),
    .init(imageName: "best_item7", title: "북청사자놀음 데미머그", size: "89ml"),
    .init(imageName: "best_item8", title: "서울 제주 데미머그 세트", size: "")
]

