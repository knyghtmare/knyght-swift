//
//  ContentView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 28/2/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0 ))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } // NavLINK
                } //: LOOP
            } //: List
            .navigationBarTitle("Welcome to Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        // List
                        Button(action: {
                            print("List View has been activated.")
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(.accentColor)
                        }
                        // Grid
                        Button(action: {
                            print("Grid has been activated.")
                        }) {
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .foregroundColor(.primary)
                        }
                    } //: HSTACK
                } //: BUTTONS
            } //: TOOLBAR
        } //: Navigation View
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
