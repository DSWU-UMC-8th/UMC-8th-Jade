//
//  RecommendedMenuSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import SwiftUI

struct CoffeeMenuSection: View {
    @AppStorage("nickname") var nickname: String?
    @StateObject private var viewModel = CoffeeMenuViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            (
                    Text("\(nickname ?? "(설정 닉네임)")")
                        .foregroundStyle(.brown01) +
                    Text("님을 위한 추천 메뉴")
                )
                .font(.mainTextBold24)
                .padding(.horizontal)

            ScrollView(.horizontal) {
                LazyHStack(spacing: 12) {
                    ForEach(viewModel.items) { item in
                        if let detail = DummyCoffeeDetailData.detail(for: item.name) {
                            NavigationLink {
                                CoffeeDetailView(viewModel: CoffeeDetailViewModel(coffee: detail))
                            } label: {
                                CircleImageCard(item: item)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
        }

    }
}

