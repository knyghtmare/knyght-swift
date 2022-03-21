//
//  AddKartView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 22/3/22.
//

import SwiftUI

struct AddKartView: View {
    // MARK: - properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - body<##><##>
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) // BUTTON
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.redColor ?? sampleProduct.redColor,
                green: shop.selectedProduct?.greenColor ?? sampleProduct.greenColor,
                blue: shop.selectedProduct?.blueColor ?? sampleProduct.blueColor
            )
        )
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW<##>

struct AddKartView_Previews: PreviewProvider {
    static var previews: some View {
        AddKartView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
