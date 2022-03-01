//
//  AnimalDetailView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 1/3/22.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    let animal: AnimalModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    ) // makes a color underline
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                } //: GROUP
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Interesting Facts")
                    
                    // InsetGalleryView(animal: animal)
                    InsetFactView(animal: animal)
                } //: GROUP
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "About \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "\(animal.name) Locations")
                    
                }
                .padding(.horizontal)
                // LINK
            } //: VSTACK
            .navigationBarTitle("Learn About \(animal.name)", displayMode: .inline)
        } //: SCROLL
    }
}

// MARK: - PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[2])
        }
    }
}
