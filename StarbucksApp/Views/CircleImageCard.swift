//
//  CircleImageCard.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import SwiftUI

struct CircleImageCard<T: ImageCardDisplayable>: View {
    let item: T

    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
                .clipShape(Circle())

            Text(item.name)
                .font(.mainTextSemiBold14)
                .padding(.top, 3)
                .foregroundStyle(.black03)
        }
        .frame(width: 130)
    }
}
