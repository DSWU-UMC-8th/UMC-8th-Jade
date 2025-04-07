//
//  CoffeeDetailViewModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import Foundation

class CoffeeDetailViewModel: ObservableObject {
    @Published var coffee: CoffeeDetailModel
    @Published var selectedType: CoffeeType = .iced

    init(coffee: CoffeeDetailModel) {
        self.coffee = coffee
    }

    func selectType(_ type: CoffeeType) {
        selectedType = type
    }
}

