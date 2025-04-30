//
//  ReceiptDetailImageView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/27/25.
//

import SwiftUI

struct ReceiptDetailImageView: View {
    var imageData: Data
    @Binding var selectedReceipt: ReceiptsModel?
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                if let uiImage = UIImage(data: imageData) {
                    ZStack(alignment: .topTrailing) {
                        Image(uiImage: uiImage)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                        VStack {
                            HStack {
                                Spacer()
                                Button(action: {
                                    selectedReceipt = nil
                                }) {
                                    Image("Vector")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                }
                                .padding(20)
                                .padding(.trailing, 10)
                            }
                            Spacer()
                        }
                    }
                } else {
                    Text("이미지를 불러올 수 없습니다.")
                        .padding()
                }
                
                Spacer()
            }
        }
        .transition(.opacity)
        .navigationBarBackButtonHidden(true)
    }
}
