//
//  CustomNavigationBar.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/6/25.
//

import SwiftUI

struct CustomNavigationBar: View {
    var title: String? = nil
    let onBack: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                onBack()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.black)
                    .padding()
            }
            
            Spacer()
            
            if let title = title {
                Text(title)
                    .font(.mainTextMedium16)
            }

            
            Spacer()
            
            // 오른쪽 정렬 맞추기용 (백 버튼과 대칭)
            Color.clear.frame(width: 44, height: 44)
        }
    }
}
#Preview {
    CustomNavigationBar(title: "메뉴 상세", onBack: {})
}
