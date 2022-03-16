//
//  TitleView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 16/3/22.
//

import SwiftUI

struct TitleView: View {
    // MARK: - properties
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.horizontal)
                .padding(.top, 15)
                .padding(.bottom, 10)
            
            Spacer()
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(ColorBackground)
            // .padding()
    }
}
