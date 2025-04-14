//
//  BestItemsSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import SwiftUI

struct BestItemsSection: View {
    let products: [BestItems] = bestItems
    @State private var currentPage = 0

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    private var pagedItems: [[BestItems]] {
        stride(from: 0, to: products.count, by: 4).map {
            Array(products[$0..<min($0 + 4, products.count)])
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Best Item")
                .font(.mainTextSemiBold22)
                .padding(.leading, 8)

            TabView(selection: $currentPage) {
                ForEach(pagedItems.indices, id: \.self) { index in
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(pagedItems[index]) { product in
                            VStack {
                                Image(product.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(.bottom, 5)

                                VStack(alignment: .leading) {
                                    Text(product.title)
                                        .font(.mainTextSemiBold14)

                                    Text(product.size)
                                        .font(.mainTextSemiBold14)
                                }
    
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                    .tag(index)
                }
            }
            .frame(height: 400)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentPage)

            if pagedItems.count > 1 {
                HStack(spacing: 8) {
                    ForEach(0..<pagedItems.count, id: \.self) { index in
                        Circle()
                            .fill(index == currentPage ? Color.black : Color.gray.opacity(0.3))
                            .frame(width: 8, height: 8)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}



#Preview {
    ShopView()
}
