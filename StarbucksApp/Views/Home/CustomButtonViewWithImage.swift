//
//  CustomButtonViewWithImage.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/31/25.
//

import SwiftUI

struct CustomButtonViewWithImage: View {
    var buttonText: String
    var imageName: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                Text(buttonText)
                    .font(.mainTextSemiBold16)
                    .foregroundStyle(.black02)
            }
        }
    }
}
