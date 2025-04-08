//
//  TapView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/31/25.
//

import SwiftUI

struct TapView: View {
        
    var body: some View {
            TabView {
                Tab("Home", image: "home_grey") {
                    HomeView()
                }

                Tab("Pay", image: "pay_grey") {
                    PayView()
                }

                Tab("Order", image: "order_grey") {
                    OrderView()
                }
                
                Tab("Shop", image: "shop_grey") {
                    ShopView()
                }
                
                Tab("Other", image: "other_grey") {
                    OtherView()
                }
            }
            .tint(.green02)
            .onAppear {
                    UITabBar.appearance().backgroundColor = .white
                }
            .navigationBarBackButtonHidden(true)
        }
}

#Preview {
    TapView()
}
