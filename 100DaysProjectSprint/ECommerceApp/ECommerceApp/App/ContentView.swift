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
        ZStack {
            VStack(spacing: 0) {
                NavBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                // accomodate for the notch
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                FooterView()
                    .padding(.horizontal)
            } //: VSTACK
            .background(ColorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
