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
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: PREVIEW

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .background(Color.gray)
    }
}
