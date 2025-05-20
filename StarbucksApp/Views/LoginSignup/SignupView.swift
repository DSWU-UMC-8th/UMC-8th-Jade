//
//  SignupView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/30/25.
//

import SwiftUI

struct SignupView: View {
    @StateObject private var viewModel = SignupViewModel()
    
    @FocusState private var isNicknameFocused: Bool
    @FocusState private var isEmailFocused: Bool
    @FocusState private var isPasswordFocused: Bool
    
    @Environment(\.dismiss) private var dismiss
    @AppStorage("nickname") private var savedNickname: String = ""
    @AppStorage("email") private var savedEmail: String = ""
    @AppStorage("password") private var savedPassword: String = ""
    
    var body: some View {
            VStack(spacing: 0) {
                CustomNavigationBar(title: "가입하기", onBack: {
                    dismiss()
                })
                
                VStack(spacing: 20) {
                    TextField("닉네임", text: $viewModel.nickname)
                        .font(.mainTextRegular13)
                        .focused($isNicknameFocused)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(isNicknameFocused ? Color("green01") : Color("gray03"))
                    
                    TextField("이메일", text: $viewModel.email)
                        .font(.mainTextRegular13)
                        .focused($isEmailFocused)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(isEmailFocused ? Color("green01") : Color("gray03"))
                    
                    SecureField("비밀번호", text: $viewModel.password)
                        .font(.mainTextRegular13)
                        .focused($isPasswordFocused)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(isPasswordFocused ? Color("green01") : Color("gray03"))
                    
                    Spacer()
                    
                    
                    Button(action: {
                        if viewModel.nickname.count > 0 &&
                           viewModel.email.count > 0 &&
                            viewModel.password.count > 0 {
                            
                            savedNickname = viewModel.nickname
                            savedEmail = viewModel.email
                            savedPassword = viewModel.password
                            
                            dismiss()
                        }
                    }) {
                        HStack {
                            Spacer()
                            Image("create_button")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .padding()
                .padding(.top, 150)
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
struct SignupView_Previews: PreviewProvider {
        static var previews: some View {
            SignupView()
        }
}
