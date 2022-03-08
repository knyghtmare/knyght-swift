//
//  Product.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 8/3/22.
//

import SwiftUI

struct Product: Codable, Identifiable {
    // code here
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
