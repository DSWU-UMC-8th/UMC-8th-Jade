//
//  AllProductsSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import SwiftUI

struct AllProductsSection: View {
    let products: [AllProducts] = allProducts

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("All Products")
                .font(.mainTextSemiBold22)
                .padding(.leading, 8)

            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    ForEach(products) { product in
                        VStack() {
                            Image(product.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipped()

                            Text(product.title)
                                .font(.mainTextSemiBold13)
                                .foregroundStyle(.black02)
                        }
                        .frame(width: 95)
                    }
                }
                .padding(.horizontal, 8)
            }
        }
    }
}

#Preview {
    AllProductsSection()
}
