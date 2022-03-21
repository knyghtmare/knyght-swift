//
//  ContentView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 7/3/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        //Text("Hello, world!")
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                    // accomodate for the notch
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0, content: {
                            
                            FeatureTabView()
                                //.padding(.vertical, 20)
                                // not sure why it decided not to scale
                                // but adding the frame modifier patched it
                                .frame(height:230)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) {product in
                                    ProductItemView(product: product)
                                } // :LOOP
                            }) //: GRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()

                            FooterView()
                                .padding(.horizontal)
                        }) // VSTACK
                    }) // Scroll
                } //: VSTACK
                .background(ColorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            } // conditional
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
