//
//  ProductItemView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 16/3/22.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - properties
    
    let product: ProductModel
    
    // MARK: - BODY<##><##>
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZSTACK
            .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
            // NAME
            Text(product.name)
            // PRICE
            // Text(product.price)
        }) //: VSTACK
    }
}

// MARK: - Preview

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products.first!)
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(ColorBackground)
    }
}
