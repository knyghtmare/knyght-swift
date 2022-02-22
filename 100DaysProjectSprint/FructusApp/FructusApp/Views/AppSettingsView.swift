//
//  AppSettingsView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct AppSettingsView: View {
    // MARK: Properties
    
    // MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                } //: VSTACK
                .navigationBarTitle(Text("App Settings"), displayMode: .large)
                .padding()
            } //: ScrollView
        } //: Navigation
    }
}

// MARK: PREVIEW

struct AppSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AppSettingsView()
    }
}
