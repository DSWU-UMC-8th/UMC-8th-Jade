//
//  BreadMenuSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

// BreadMenuSection.swift
import SwiftUI

struct BreadMenuSection: View {
    @StateObject private var viewModel = BreadMenuViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            Text("하루가 달콤해지는 디저트")
                .font(.mainTextBold24)
                .padding(.horizontal)

            ScrollView(.horizontal) {
                LazyHStack(spacing: 12) {
                    ForEach(viewModel.items) { item in
                        CircleImageCard(item: item)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

