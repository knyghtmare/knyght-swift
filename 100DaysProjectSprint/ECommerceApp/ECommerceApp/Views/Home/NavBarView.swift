//
//  NavBarView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 7/3/22.
//

import SwiftUI

struct NavBarView: View {
    // MARK: - Properties
    
    // MARK: - BODY<##><##>
    var body: some View {
        HStack {
            Button(action: {},label: {
                //Text("Cheese")
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) // BUTTON
            
            Spacer()
            
            Button(action: {},label: {
                //Text("Cheese")
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    // notification about items in Kart
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                } // ZSTACK
            }) // BUTTON
        }
    } //: HSTACK
}

// MARK: - PREVIEW<##>

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
