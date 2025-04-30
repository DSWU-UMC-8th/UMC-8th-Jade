//
//  DeliverySection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import SwiftUI

struct DeliverySection: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("home_delivery_banner")
                .resizable()
                .scaledToFit()
                .padding(1)
            
            VStack(alignment: .leading){
                Text("딜리버스")
                    .font(.mainTextBold24)
                    .foregroundStyle(Color("green04"))
                    .padding(.bottom, 1)
                
                Text("예약 배달 서비스")
                    .font(.mainTextBold24)
                    .foregroundStyle(Color("green04"))
                    .padding(.bottom, 15)
                
                Text("특별한 순간을 위해")
                    .font(.mainTextBold16)
                    .padding(.bottom, 1)
                
                Text("미리 예약해 보세요.")
                    .font(.mainTextBold16)
            }
            .padding(30)
        }
    }
}

#Preview {
    DeliverySection()
}
