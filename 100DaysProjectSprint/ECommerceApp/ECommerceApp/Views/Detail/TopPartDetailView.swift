//
//  TopPartDetailView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - properties
    
    // MARK: - body<##><##>
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leader, spacing: 6, content: {
                Text("Price")
            }) //: VSTACK
        }) //: HSTACK
    }
}

// MARK: - preview<##>

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
