//
//  WhatsNewCard.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

// WhatsNewCard.swift
import SwiftUI

struct WhatsNewCard: View {
    let item: WhatsNewModel

    var body: some View {
        VStack(alignment: .leading) {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 240, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            Text(item.title)
                .font(.mainTextSemiBold18)
                .padding(.vertical, 3)
            
            Text(item.subtitle)
                .font(.mainTextSemiBold13)
                .foregroundStyle(.gray03)
        }
        .frame(width: 250)
    }
}

#Preview {
    WhatsNewSection()
}
