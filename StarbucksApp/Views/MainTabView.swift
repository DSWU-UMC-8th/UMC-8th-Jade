//
//  TabView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/13/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var showBanner: Bool = true
        
    var body: some View {
        TabView {
            Tab("Home", image: "home_grey") {
                HomeView(showBanner: $showBanner)
            }
            Tab("Pay", image: "pay_grey") { PayView() }
            Tab("Order", image: "order_grey") { OrderView() }
            Tab("Shop", image: "shop_grey") { ShopView() }
            Tab("Other", image: "other_grey") { OtherView() }
        }
        .overlay(
            Group {
                if showBanner {
                    BannerView(showBanner: $showBanner)

                }
            }
        )
        .tint(.green02)
    }
}

#Preview {
    MainTabView()
}
