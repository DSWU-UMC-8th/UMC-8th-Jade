//
//  TopBannerSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import SwiftUI

struct TopBannerSection: View {
    let banners = ["shop_top_banner1", "shop_top_banner2", "shop_top_banner3"]
    
    var body: some View {
        ScrollView(.horizontal) {
                    LazyHStack(spacing: 20) {
                        ForEach(banners, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 270, height: 216)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                    }
                }
    }
}

#Preview {
    TopBannerSection()
}
