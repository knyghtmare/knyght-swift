//
//  Constants.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 7/3/22.
//

import SwiftUI

// DATA

let players: [PlayerModel] = Bundle.main.decode("player.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")
let products: [ProductModel] = Bundle.main.decode("product.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")

// COLOR

let ColorBackground: Color = Color("ColorBackground")
let ColorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
// cannot use constants for a computed property
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
// API
// IMAGE
// FONT
// STRING
// MISC
