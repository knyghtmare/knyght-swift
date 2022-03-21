//
//  QuanFavView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 21/3/22.
//

import SwiftUI

struct QuanFavView: View {
    // MARK: - properties
    
    @State private var counter: Int = 0
    
    // MARK: - body<##><##>
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Text("Cheese")
        }) //HSTACK
    }
}

// MARK: - PREVIEW<##>

struct QuanFavView_Previews: PreviewProvider {
    static var previews: some View {
        QuanFavView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
