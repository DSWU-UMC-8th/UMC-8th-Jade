//
//  NewProductsSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import SwiftUI

struct NewProductsSection: View {
    let products: [NewProducts] = newProducts

    // 2열 그리드 설정
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("New Products")
                .font(.mainTextSemiBold22)
                .padding(.leading, 8)

            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(products) { product in
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
        }
    }
}


#Preview {
    NewProductsSection()
}
