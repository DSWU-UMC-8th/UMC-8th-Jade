//
//  BannerView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/30/25.
//

import SwiftUI

struct BannerView: View {
    @Binding var showBanner: Bool
    
    var body: some View {
        ZStack {
            Color.white
            .ignoresSafeArea()
            
        VStack(spacing: 0) {
            Image("banner")

            Spacer()
            
            VStack {
                Button(action: {
                    print("자세히 보기")
                }) {
                    Image("more_button")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 370)
                }
                
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                                showBanner = false
                            }
                    }) {
                        Text("X 닫기")
                            .font(.mainTextLight14)
                            .foregroundStyle(Color("gray05"))
                    }
                    .padding(.trailing, 30)
                }
            }
                .padding(10)
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView(showBanner: .constant(true))
    }
}

