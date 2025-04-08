//
//  BannerView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/30/25.
//

import SwiftUI

struct BannerView: View {
    // 닫기 액션을 위한 Environment 변수
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 0) {
            Image("banner")
                .resizable()
                .scaledToFill()
            
            Spacer()
            
            Button(action: {
                print("자세히 보기")
            }) {
                Image("more_button")
            }
            
            HStack {
                Spacer()
                Button(action: {
                    dismiss()
                }) {
                    Text("X 닫기")
                        .font(.mainTextLight14)
                        .foregroundStyle(Color("gray05"))
                }
            }
            .padding()
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}

