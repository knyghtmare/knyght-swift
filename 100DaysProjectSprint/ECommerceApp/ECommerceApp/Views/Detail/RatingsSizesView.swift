//
//  RatingsSizesView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 21/3/22.
//

import SwiftUI

struct RatingsSizesView: View {
    // MARK: - properties
    
    // MARK: - body<##><##>
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                        })
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(.gray)
                            .foregroundColor(.white)
                    }
                }) // HSTACK
            }) //VSTACK
            
            Spacer()
            
            // SIZES
            Text("Sizes")
        }) // HSTACK
    }
}

// MARK: - PREVIEW<##>

struct RatingsSizesView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
