//
//  FeatureItemView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 8/3/22.
//

import SwiftUI

struct FeatureItemView: View {
    // MARK: - Property
    let player: Players
    // MARK: - Body<##><##>
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW<##>

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(ColorBackground)
    }
}
