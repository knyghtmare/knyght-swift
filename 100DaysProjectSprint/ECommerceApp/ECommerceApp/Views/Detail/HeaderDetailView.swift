//
//  HeaderDetailView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - properties
    
    // MARK: - body<##><##>
    var body: some View {
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
        }) // VSTACK
        .foregroundColor(.white)
    }
}

// MARK: - preview<##>

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
