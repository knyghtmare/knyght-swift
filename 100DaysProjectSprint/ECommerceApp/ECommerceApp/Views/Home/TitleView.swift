//
//  TitleView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 16/3/22.
//

import SwiftUI

struct TitleView: View {
    // MARK: - properties
    
    // MARK: - BODY
    var body: some View {
        Text("Helmet")
            .font(.largeTitle)
            .fontWeight(.heavy)
    }
}

// MARK: - PREVIEW

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
            .previewLayout(.sizeThatFits)
            .background(ColorBackground)
            .padding()
    }
}
