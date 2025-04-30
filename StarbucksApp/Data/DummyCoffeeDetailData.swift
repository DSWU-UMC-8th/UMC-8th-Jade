//
//  DummyCoffeeDetailData.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import Foundation

struct DummyCoffeeDetailData {
    static func detail(for name: String) -> CoffeeDetailModel? {
            let allDetails: [CoffeeDetailModel] = [
                icedCaramelMacchiato,
                caramelMacchiato,
                iceAmericano,
                americano,
                espressoConPanna,
                espressoMacchiato
            ]

            return allDetails.first(where: { $0.nameKor == name })
        }
    
    static let icedCaramelMacchiato = CoffeeDetailModel(
        nameKor: "아이스 카라멜 마키아또",
        nameEng: "Iced Caramel Macchiato",
        description: "향긋한 바닐라 시럽과 시원한 우유에 어름을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
        price: 6100,
        imageName: "iced_caramel_macchiato",
        types: [.hot, .iced]
    )
    
    static let caramelMacchiato = CoffeeDetailModel(
        nameKor: "카라멜 마키아또",
        nameEng: "Caramel Macchiato",
        description: "향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
        price: 6100,
        imageName: "caramel_macchiato",
        types: [.hot, .iced]
    )
    
    static let iceAmericano = CoffeeDetailModel(
        nameKor: "아이스 카페 아메리카노",
        nameEng: "Ice Caffe Americano",
        description: "진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피",
        price: 4700,
        imageName: "ice_caffe_americano",
        types: [.hot, .iced]
    )
    
    
    static let americano = CoffeeDetailModel(
        nameKor: "카페 아메리카노",
        nameEng: "Caffe Americano",
        description: "진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피",
        price: 6100,
        imageName: "caffe_americano",
        types: [.hot, .iced]
    )
    
    static let espressoConPanna = CoffeeDetailModel(
        nameKor: "에스프레소 콘파나",
        nameEng: "Espresso Con Panna",
        description: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
        price: 4100,
        imageName: "espresso_con_panna",
        types: [.hot]
    )
    
    static let espressoMacchiato = CoffeeDetailModel(
        nameKor: "에스프레소 마끼아또",
        nameEng: "Espresso Macchiato",
        description: "신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로서, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료",
        price: 3900,
        imageName: "espresso_macciato",
        types: [.iced]
    )
}
