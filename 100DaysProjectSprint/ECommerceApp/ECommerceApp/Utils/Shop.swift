//
//  Shop.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 22/3/22.
//

import SwiftUI

// creating a shop class
class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
