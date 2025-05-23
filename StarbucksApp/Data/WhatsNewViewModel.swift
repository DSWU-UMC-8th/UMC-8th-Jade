//
//  WhatsNewViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

// WhatsNewViewModel.swift
import Foundation

final class WhatsNewViewModel: ObservableObject {
    @Published var items: [WhatsNewModel] = [
        WhatsNewModel(title: "25년 3월 일회용컵 없는 날 캠패..", subtitle: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요.", imageName: "whats_new_image1"),
        WhatsNewModel(title: "스타벅스 ooo점을 찾습니다", subtitle: "스타벅스 커뮤니티 스토어 파트너를 운영할 기관을 공모합니다.", imageName: "whats_new_image2"),
        WhatsNewModel(title: "2월 8일, 리저브 스프링 신규 커...", subtitle: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요.", imageName: "whats_new_image3")
    ]
}

