//
//  FooterView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 7/3/22.
//

import SwiftUI
// MARK: - PROPERTIES

// MARK: - BODY
struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
            Text("Copyright © Tahsin Jahin Khalid 2022\nAll Rights Reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(ColorBackground)
    }
}
