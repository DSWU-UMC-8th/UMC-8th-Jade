//
//  ReceiptSegment.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/14/25.
//

import Foundation

enum ReceiptSegment: Int, CaseIterable, Identifiable {
    case first

    var id: Int { rawValue }

    var title: String {
        return "영수증"
    }

    var imageName: String {
        return "first"
    }
}

