//
//  CategoryItemView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 9/3/22.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Properties
    let category: CategoryModel
    
    // MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //BUTTON
    }
}

// MARK: - PREVIEW<##>

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(ColorBackground)
    }
}
