//
//  SwiftUIView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct SwiftUIView: View {
    // MARK: - properties
    
    // MARK: - body<##><##>
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            // HEADER
            Text(sampleProduct.name)
            // DETAIL TOP PART
            // DETAIL BOTTOM PART
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVOURITE
            // ADD TO CART
            Spacer()
        }) //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.redColor, green: sampleProduct.greenColor, blue: sampleProduct.blueColor)
        )
    }
}

// MARK: - PREVIEW<##>

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
