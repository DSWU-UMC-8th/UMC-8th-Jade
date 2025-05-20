//
//  CoffeeDetailView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import SwiftUI

struct CoffeeDetailView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: CoffeeDetailViewModel

    var body: some View {
        VStack (spacing: 16){
            ZStack {
                // 커피 이미지
                Image(viewModel.coffee.imageName)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image("back_icon")
                            .resizable()
                            .frame(width: 32, height: 32)
                    }

                    Spacer()

                    Button(action: {
                        print("오른쪽 아이콘 눌림")
                    }) {
                        Image("share_icon")
                            .resizable()
                            .frame(width: 32, height: 32)
                    }
                }.padding(.horizontal, 20)
                .padding(.bottom, 230)
            }
            
            
            
            VStack (alignment: .leading) {
                // 이름 & new 뱃지
                VStack(alignment: .leading) {
                    HStack {
                        Text(viewModel.coffee.nameKor)
                            .font(.mainTextSemiBold24)
                        Text("NEW")
                            .font(.mainTextRegular09)
                            .foregroundStyle(.green00)
                    }
                    Text(viewModel.coffee.nameEng)
                        .font(.mainTextSemiBold14)
                        .foregroundStyle(.gray01)
                        .padding(.bottom, 20)
                }
                
                // 설명
                Text(viewModel.coffee.description)
                    .font(.mainTextSemiBold14)
                    .foregroundStyle(.gray06)
                    .padding(.bottom, 15)
                
                // 가격
                Text("\(viewModel.coffee.price)원")
                    .font(.mainTextSemiBold24)
                    .foregroundStyle(.black01)
            }
            .padding(.horizontal, 15)
            
            // 타입 선택
            if viewModel.coffee.types.count != 0 {
                HStack(spacing: 0) {
                    ForEach(viewModel.coffee.types, id: \.self) { type in
                        Button(action: {
                            withAnimation(.easeInOut) {
                                viewModel.selectType(type)
                            }
                        }) {
                            Text(type.rawValue)
                                .font(.mainTextSemiBold14)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 8)
                                .background(
                                    viewModel.selectedType == type ? Color.white : Color.clear
                                )
                                .foregroundStyle(
                                    viewModel.selectedType == type
                                    ? (type == .iced ? Color.blue : Color.red)
                                    : Color("gray02")
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 999))
                                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 1)
                        }
                    }
                }
                
                .background(Color("gray07"))
                .clipShape(RoundedRectangle(cornerRadius: 999))
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 1)
                .padding(.horizontal)
            }
            
            
            
            Spacer()
            
            OrderButtonView {
                    print("주문하기")
                }
        }
        
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(edges: .top)
    }
}



#Preview {
    CoffeeDetailView(viewModel: CoffeeDetailViewModel(coffee: DummyCoffeeDetailData.americano))
}
