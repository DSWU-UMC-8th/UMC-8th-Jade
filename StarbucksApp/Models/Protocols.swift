//
//  Protocols.swift
//  StarbucksApp
//
//  Created by Jung Hyun Han on 4/7/25.
//

import Foundation

protocol ImageCardDisplayable: Identifiable {
    var name: String { get }
    var imageName: String { get }
}
