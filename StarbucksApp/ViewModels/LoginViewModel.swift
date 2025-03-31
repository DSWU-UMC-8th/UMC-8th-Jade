//
//  LoginViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/23/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var id: String = ""
    @Published var pwd: String = ""
}
