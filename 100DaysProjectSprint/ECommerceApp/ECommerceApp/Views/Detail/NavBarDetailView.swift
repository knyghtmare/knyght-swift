//
//  NavBarDetailView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 17/3/22.
//

import SwiftUI

struct NavBarDetailView: View {
    // MARK: - properties
    
    // MARK: - body<##><##>
    var body: some View {
        HStack {
            Button(action: {}, label: {
                //Text("Button")
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                //Text("Button")
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        } // HSTACK
    }
}

// MARK: - preview<##>

struct NavBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
