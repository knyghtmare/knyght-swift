//
//  BrandGridView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                // elements
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }) // GRID
            .frame(height: 200)
            .padding(15)
        }) // Scroll
    }
}

// MARK: - PREVIEW

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(ColorBackground)
    }
}
