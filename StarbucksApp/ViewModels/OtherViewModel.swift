//
//  OtherViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 3/31/25.
//

import Foundation
import SwiftUI

class OtherViewModel: ObservableObject {
    @AppStorage("nickname") var nickname: String = ""
}
