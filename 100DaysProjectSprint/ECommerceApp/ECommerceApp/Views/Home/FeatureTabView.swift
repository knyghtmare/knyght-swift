//
//  FeatureTabView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 8/3/22.
//

import SwiftUI

struct FeatureTabView: View {
    // MARK: - Properties
    
    // MARK: - Body<##><##>
    var body: some View {
        TabView {
            //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ForEach(players) {player in
                FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: PREVIEW

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .previewDevice("iPhone 11")
            .background(Color.gray)
    }
}
