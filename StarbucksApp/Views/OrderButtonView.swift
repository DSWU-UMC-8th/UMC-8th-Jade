//
//  OrderButtonView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import SwiftUI

struct OrderButtonView: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text("주문하기")
                .font(.mainTextSemiBold16)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("green00"))
                .clipShape(RoundedRectangle(cornerRadius: 999))
                .padding(.horizontal)
        }
    }
}
