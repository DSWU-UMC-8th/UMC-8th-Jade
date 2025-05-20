//
//  ReceiptTopNavigationView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/27/25.
//

import SwiftUI

struct ReceiptTopNavigationView: View {
    var title: String
    var onAddTapped: () -> Void
    var onDismissTapped: () -> Void

    var body: some View {
        HStack {
            Button(action: {
                onDismissTapped()
            }) {
                Image(systemName: "chevron.left")
                    .font(.title3)
            }

            Spacer()

            Text(title)
                .font(.mainTextMedium16)

            Spacer()

            Button(action: {
                onAddTapped()
            }) {
                Image(systemName: "plus")
                    .font(.title3)
            }
        }
        .padding()
        .foregroundStyle(.black)
    }
}
