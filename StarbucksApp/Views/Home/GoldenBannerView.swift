//
//  GoldenBannerView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/6/25.
//

import SwiftUI

struct GoldenBannerView: View {
    let currentStars: Int = 1
    let totalStars: Int = 12
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.yellow
                .overlay(
                    Image("home_golden_banner")
                        .resizable()
                        .scaledToFill()
                )
                .frame(height: 180)
            
            VStack(alignment: .leading) {
                Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                    .font(.mainTextSemiBold24)
                    .padding(.top, 70)
            }
            .padding()
        }
        
        HStack{
            VStack(alignment: .leading){
                Text("11★ until next Reward")
                    .font(.mainTextSemiBold14)
                    .foregroundStyle(.brown02)
                    
                // 게이지 바
                GeometryReader { geometry in
                    let width = geometry.size.width
                        ZStack(alignment: .leading) {
                            Capsule()
                                .frame(width:200, height: 8)
                                .foregroundStyle(.gray.opacity(0.3))
                            
                            Capsule()
                                .frame(width: width * CGFloat(currentStars) / CGFloat(totalStars), height: 8)
                                .foregroundStyle(.brown02)
                        }
                }
                .frame(height: 8)
        }
            
            HStack{
                Text("\(currentStars)")
                    .font(.mainTextSemiBold38)
                    .foregroundStyle(.black03)
                Text("/")
                    .font(.mainTextRegular24)
                    .foregroundStyle(.gray00)
                Text("\(totalStars)★")
                    .font(.mainTextSemiBold24)
                    .foregroundStyle(.brown02)
                
            }
        }
        .frame(height: 8)
        .padding()
    }
}

#Preview {
    GoldenBannerView()
}
