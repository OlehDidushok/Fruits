//
//  FruitModel.swift
//  Fruits
//
//  Created by Oleh on 14.06.2024.
//

import SwiftUI

// MARK: - FRUIT DATA MODEL

struct Fruit:Identifiable  {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
