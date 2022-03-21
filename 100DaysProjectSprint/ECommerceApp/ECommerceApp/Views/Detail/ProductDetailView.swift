//
//  SwiftUIView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - properties
    
    // MARK: - body<##><##>
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavBarDetailView()
                .padding(.horizontal)
                // this is deprecated, I know
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            // Text(sampleProduct.name)
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            
            // DETAIL BOTTOM PART
            
            VStack(alignment: .center, spacing: <#T##CGFloat?#>, content: <#T##() -> _#>)
            
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVOURITE
            // ADD TO CART
            Spacer()
        }) //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.redColor,
                green: sampleProduct.greenColor,
                blue: sampleProduct.blueColor
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - PREVIEW<##>

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
