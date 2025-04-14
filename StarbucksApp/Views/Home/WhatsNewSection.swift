//
//  WhatsNewSection.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

// WhatsNewSection.swift
import SwiftUI

struct WhatsNewSection: View {
    @StateObject private var viewModel = WhatsNewViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("What’s New")
                .font(.mainTextBold24)

            ScrollView(.horizontal) {
                LazyHStack(spacing: 5) {
                    ForEach(viewModel.items) { item in
                        WhatsNewCard(item: item)
                    }
                }
            }
        }
        .padding(.horizontal, 5)
    }
}


#Preview {
    WhatsNewSection()
}
