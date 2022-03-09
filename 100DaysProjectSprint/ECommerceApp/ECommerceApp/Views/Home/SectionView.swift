//
//  SectionView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 9/3/22.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    
    @State var rotateClockwise: Bool
    
    // MARK: - BODY<##><##>
    var body: some View {
        VStack {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: -90))
            Spacer()
        } //:VSTACK
        .background(ColorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - PREVIEW<##>

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(ColorBackground)
    }
}
