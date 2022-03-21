//
//  AddKartView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 22/3/22.
//

import SwiftUI

struct AddKartView: View {
    // MARK: - properties
    
    // MARK: - body<##><##>
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) // BUTTON
        .padding(15)
        .background(
            Color(red: sampleProduct.redColor, green: sampleProduct.greenColor, blue: sampleProduct.blueColor)
        )
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW<##>

struct AddKartView_Previews: PreviewProvider {
    static var previews: some View {
        AddKartView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
