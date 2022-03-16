//
//  Product.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 8/3/22.
//

import SwiftUI

struct ProductModel: Codable, Identifiable {
    // code here
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    // computed properties
    var redColor: Double {
        return color[0]
    }
    
    var greenColor: Double {
        return color[1]
    }
    
    var blueColor: Double {
        return color[2]
    }
    
    var formattedPrice: String {
        return "$ \(price)"
    }
}
