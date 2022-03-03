//
//  CreditsView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 3/3/22.
//

import SwiftUI

struct CreditsView: View {
    // MARK: PROPERTIES
    
    // MARK: BODY
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright © Tahsin Jahin Khalid
    All Rights Reserved
    I Like SwiftUI 💯
    """)
                .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.40)
    }
}

// MARK: PREVIEW

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
