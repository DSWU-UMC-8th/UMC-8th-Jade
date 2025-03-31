//
//  OtherView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/30/25.
//

import SwiftUI

struct OtherView: View {
    @StateObject private var viewModel = OtherViewModel()
    
    // @AppStorage를 통해 닉네임 가져오기
    @AppStorage("nickname") private var nickname: String = ""
    
    var body: some View {
        VStack {
            // 상단 헤더: 흰색 배경
            VStack {
                HStack {
                    Text("Other")
                        .font(.mainTextExtraBold24)
                    
                    Spacer()
                    
                    // 로그아웃 버튼 (상단 문 모양)
                    Button(action: {
                        print("로그아웃")
                    }) {
                        Image("logout_button")
                    }
                }
                .padding()
                .background(Color.white) // 상단은 흰색 배경
            }
            
            // 아래 부분은 회색 배경
            ZStack {
                Color.gray.opacity(0.1) // 회색 배경
                    .edgesIgnoringSafeArea(.all) // 화면 전체를 덮는 배경색
                
                VStack {
                    // 닉네임과 환영 메시지
                    HStack {
                        if nickname.isEmpty {
                            Text("(작성한 닉네임)")
                                .font(.mainTextSemiBold24)
                                .foregroundColor(.green01)
                        } else {
                            Text(nickname)
                                .font(.mainTextSemiBold24)
                                .foregroundColor(.green)
                        }
                        
                        Text("님")
                            .font(.mainTextSemiBold24)
                    }
                    .padding(.top, 30)
                    
                    Text("환영합니다! 🙌🏻")
                        .font(.mainTextSemiBold24)
                        .padding(.bottom, 30)
                    
                    // 버튼들 (별 히스토리, 전자 영수증, 나만의 메뉴)
                    HStack {
                        CustomButtonView(buttonText: "별 히스토리", imageName: "other_star_button") {
                            print("별 히스토리")
                        }
                        
                        CustomButtonView(buttonText: "전자 영수증", imageName: "other_receipt_button") {
                            print("전자 영수증")
                        }
                        
                        CustomButtonView(buttonText: "나만의 메뉴", imageName: "other_menu_button") {
                            print("나만의 메뉴")
                        }
                    }
                    
                    .padding(.bottom, 30)
                    
                    VStack(alignment: .leading, spacing: 25) {
                        Text("Pay")
                            .font(.mainTextSemiBold18)
                        
                        Group {
                            HStack(alignment: .top, spacing: 35) {
                                VStack(alignment: .leading, spacing: 25) {
                                    CustomButtonViewWithImage(buttonText: "스타벅스 카드 등록", imageName: "other_icon1") {
                                        print("스타벅스 카드 등록 ")
                                    }
                                    
                                    CustomButtonViewWithImage(buttonText: "쿠폰 등록", imageName: "other_icon2") {
                                        print("쿠폰 등록")
                                    }
                                }
                                
                                VStack(alignment: .leading, spacing: 25) {
                                    CustomButtonViewWithImage(buttonText: "카드 교환권 등록", imageName: "other_icon3") {
                                        print("카드 교환권 등록")
                                    }
                                    
                                    CustomButtonViewWithImage(buttonText: "쿠폰 히스토리", imageName: "other_icon4") {
                                        print("쿠폰 히스토리")
                                    }
                                }
                            }
                            .padding(.bottom, 1)
                        }
                        
                        Divider()
                            .padding(.bottom, 15)
                        
                        VStack(alignment: .leading, spacing: 25) {
                            Text("고객지원")
                                .font(.mainTextSemiBold18)
                            
                            Group {
                                HStack(alignment: .top, spacing: 35) {
                                    VStack(alignment: .leading, spacing: 25) {
                                        CustomButtonViewWithImage(buttonText: "스토어 케어", imageName: "other_icon5") {
                                            print("스토어 케어")
                                        }
                                        
                                        CustomButtonViewWithImage(buttonText: "매장 정보", imageName: "other_icon6") {
                                            print("매장 정보")
                                        }
                                        
                                        CustomButtonViewWithImage(buttonText: "마이 스타벅스 리뷰", imageName: "other_icon7") {
                                            print("마이 스타벅스 리뷰")
                                        }
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 25) {
                                        CustomButtonViewWithImage(buttonText: "고객의 소리", imageName: "other_icon8") {
                                            print("고객의 소리")
                                        }
                                        
                                        CustomButtonViewWithImage(buttonText: "반납기 정보", imageName: "other_icon9") {
                                            print("반납기 정보")
                                        }
                                    }
                                }
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    
                }
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
