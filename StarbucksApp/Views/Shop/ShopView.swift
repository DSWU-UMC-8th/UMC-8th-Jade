//
//  ShopView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/30/25.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ZStack {
            Color("White")
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 30) {
                    HStack {
                        Text("Starbucks Online Store")
                            .font(.mainTextSemiBold24)
                        Spacer()
                    }
                    .padding(.top,20)
                    
                    TopBannerSection()
                    AllProductsSection()
                    BestItemsSection()
                    NewProductsSection()
                }
                .padding(.horizontal)
            }
        }
    }
}


#Preview {
    ShopView()
}
