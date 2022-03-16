//
//  BrandItemView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - properties
    let brand: BrandModel
    
    // MARK: - body<##><##>
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - preview<##>

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(ColorBackground)
    }
}
