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
            .background(Color(red: product.redColor, green: product.greenColor, blue: product.blueColor))
            .cornerRadius(12)
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
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
