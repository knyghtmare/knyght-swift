//
//  SwiftUIView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - properties
    @EnvironmentObject var shop: Shop
    
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
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            
            VStack(alignment: .center, spacing: 0, content: {
                // code here
                
                // RATING + SIZES
                RatingsSizesView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    // code here
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) // SCROLL
                
                // QUANTITY + FAVOURITE
                QuanFavView()
                    .padding(.vertical, 10)
                // CART BUTTON
                // Spacer()
                AddKartView()
                    .padding(.bottom, 20)
            }) //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVOURITE
            // ADD TO CART
            Spacer()
        }) //: VSTACK
            .zIndex(0)
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
            .environmentObject(Shop())
    }
}
