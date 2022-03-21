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
        HStack(alignment: .center, spacing: 6, content: {
            // QUANTITY
            Button(action: {}, label: {
                Image(systemName: "minus.circle")
            }) //BUTTON
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {}, label: {
                Image(systemName: "plus.circle")
            }) //BUTTON
            
            Spacer()
            
            
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
