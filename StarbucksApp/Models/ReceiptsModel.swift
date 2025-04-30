//
//  ReceiptsModel.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/27/25.
//

import Foundation
import SwiftData

@Model
final class ReceiptsModel {
    @Attribute(.unique) var id: UUID
    var storeName: String
    var purchaseDate: Date
    var totalAmount: Int
    var imageData: Data?

    init(id: UUID = UUID(), storeName: String, purchaseDate: Date, totalAmount: Int, imageData: Data? = nil) {
        self.id = id
        self.storeName = storeName
        self.purchaseDate = purchaseDate
        self.totalAmount = totalAmount
        self.imageData = imageData
    }
}
