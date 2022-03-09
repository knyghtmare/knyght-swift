//
//  CategoryGridView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 9/3/22.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Properties
    
    // MARK: - BODY<##><##>
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                ForEach(categories) { category in
                    CategoryItemView(category: category)
                }
            }) // GRID
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        }) //Scroll
    }
}

// MARK: - PREVIEW<##>

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(ColorBackground)
    }
}
