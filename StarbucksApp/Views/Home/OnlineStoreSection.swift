//
//  OnlineStoreSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import SwiftUI

struct OnlineStoreSection: View {
    var body: some View {
            ZStack(alignment: .leading) {
                Image("home_star_banner")
                    .resizable()
                    .scaledToFit()
                    .padding(1)
                
                VStack(alignment: .leading){
                    Text("TIP")
                        .font(.mainTextSemiBold12)
                        .padding(.bottom, 5)
                        .foregroundStyle(Color("gray01"))
                    
                    Text("온라인 스토어")
                        .font(.mainTextBold24)
                        .padding(.bottom, 1)
                    
                    Text("별★ 적립 혜택")
                        .font(.mainTextBold24)
                        .padding(.bottom, 15)
                    
                    Text("온라인 스토어 구매 시")
                        .font(.mainTextBold16)
                        .padding(.bottom, 1)
                        .foregroundStyle(Color("gray01"))
                    
                    Text("별★을 적립해 드립니다.")
                        .font(.mainTextBold16)
                        .foregroundStyle(Color("gray01"))
                }
                .padding(30)
            }
    }
}

#Preview {
    OnlineStoreSection()
}
