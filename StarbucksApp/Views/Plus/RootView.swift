//
//  RootView.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import SwiftUI

struct RootView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some View {
        if isLoggedIn {
            MainTabView()
        } else {
            LoginView()
        }
    }
}


#Preview {
    RootView()
}
