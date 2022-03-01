//
//  InsetGalleryView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 1/3/22.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            } //: HSTACK
        } //: SCROLL
    }
}

// MARK: - PREVIEW

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
