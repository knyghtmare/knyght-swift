//
//  RatingsSizesView.swift
//  ECommerceApp
//
//  Created by Tahsin Jahin Khalid on 21/3/22.
//

import SwiftUI

struct RatingsSizesView: View {
    // MARK: - properties
    
    // [String] means "a String array"
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - body<##><##>
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(ColorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                        })
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(ColorGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }
                }) // HSTACK
            }) //VSTACK
            
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(ColorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                        })
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(ColorGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }
                }) // HSTACK
            }) //VSTACK
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
