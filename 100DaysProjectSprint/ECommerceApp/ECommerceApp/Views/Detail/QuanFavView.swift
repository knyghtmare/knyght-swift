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
        // QUANTITY
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {}, label: {
                Image(systemName: "minus.circle")
            }) //BUTTON
        }) //HSTACK
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large )
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
