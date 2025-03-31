//
//  SignupViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/30/25.
//
// SignupViewModel.swift
import SwiftUI

class SignupViewModel: ObservableObject {
    @Published var nickname: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    @AppStorage("nickname") private var storedNickname: String = ""
    @AppStorage("email") private var storedEmail: String = ""
    @AppStorage("password") private var storedPassword: String = ""
    
    // AppStorage를 사용하여 사용자 정보를 저장하는 함수
    func signup() {
        storedNickname = nickname
        storedEmail = email
        storedPassword = password
    }}

