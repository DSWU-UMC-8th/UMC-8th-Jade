//
//  HomeView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/30/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVStack(spacing: 15) {
                    GoldenBannerView()
                    
                    Image("home_bear_banner")
                        .resizable()
                        .scaledToFit()
                        .padding(1)
                    
                    CoffeeMenuSection()
                    
                    VStack (spacing:10){
                        Image("home_event_banner")
                            .resizable()
                            .scaledToFit()
                            .padding(1)
                        
                        Image("home_service_banner")
                            .resizable()
                            .scaledToFit()
                            .padding(1)
                    }
                    
                    WhatsNewSection()
                    
                    VStack (spacing:10) {
                        Image("home_mugcup_banner")
                            .resizable()
                            .scaledToFit()
                            .padding(1)
                        
                        OnlineStoreSection()
                        
                        DeliverySection()
                        
                    }
                    
                    BreadMenuSection()
                    
                    VStack(spacing: 10) {
                        Image("home_bottom_banner1")
                            .resizable()
                            .scaledToFit()
                            .padding(1)
                        
                        Image("home_bottom_banner2")
                            .resizable()
                            .scaledToFit()
                            .padding(1)
                    }
                    
                }
            }
            .scrollIndicators(.visible, axes: .vertical)
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    HomeView()
}
