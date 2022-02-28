//
//  ContentView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 28/2/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0 ))
            } //: List
            .navigationBarTitle("Welcome to Africa", displayMode: .large)
        } //: Navigation View
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
