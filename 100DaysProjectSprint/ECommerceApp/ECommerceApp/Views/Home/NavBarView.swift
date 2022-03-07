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
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
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
