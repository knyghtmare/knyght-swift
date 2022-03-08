//
//  ContentView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 7/3/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        //Text("Hello, world!")
        VStack(spacing: 0) {
            FooterView()
                .padding(.horizontal)
        } //: VSTACK
        .background(ColorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
