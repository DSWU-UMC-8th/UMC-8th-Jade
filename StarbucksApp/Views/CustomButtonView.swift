//
//  CustomButtonView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/31/25.
//

import SwiftUI

struct CustomButtonView: View {
    var buttonText: String
    var imageName: String // Add an image name to the parameters
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack (spacing: 20) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                Text(buttonText)
                    .font(.mainTextSemiBold16)
                    .foregroundColor(.black03)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)
        }
    }
}
