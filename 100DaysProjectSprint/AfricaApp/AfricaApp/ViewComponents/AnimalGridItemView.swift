//
//  AnimalGridItemView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 2/3/22.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - Properties
    
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            Image(animal.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            Text(animal.name)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.accentColor)
            /*
            Text(animal.headline)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .lineLimit(2)
                .padding(.trailing, 8)
             */
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct AnimalGridItemView_Previews: PreviewProvider {
    static var animal: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animal[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
