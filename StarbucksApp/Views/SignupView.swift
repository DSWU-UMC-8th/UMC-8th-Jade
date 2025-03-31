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
    
    var body: some View {
        Group {
            VStack(spacing: 20) {
                TextField("닉네임", text: $viewModel.nickname)
                    .font(.mainTextRegular13)
                    .focused($isNicknameFocused)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(isNicknameFocused ? Color("green01") : Color("gray03"))
                
                TextField("이메일", text: $viewModel.email)
                    .font(.mainTextRegular13)
                    .focused($isEmailFocused)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(isEmailFocused ? Color("green01") : Color("gray03"))
                
                SecureField("비밀번호", text: $viewModel.password)
                    .font(.mainTextRegular13)
                    .focused($isPasswordFocused)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(isPasswordFocused ? Color("green01") : Color("gray03"))
                
                Spacer()
                
                
                Button(action: {
                    viewModel.signup()
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
    }
    
    struct SignupView_Previews: PreviewProvider {
        static var previews: some View {
            SignupView()
        }
    }
}

#Preview {
    SignupView()
}
