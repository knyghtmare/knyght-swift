//
//  BrandItemView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - properties
    let brand: BrandModel
    
    // MARK: - body<##><##>
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

// MARK: - preview<##>

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(ColorBackground)
    }
}
