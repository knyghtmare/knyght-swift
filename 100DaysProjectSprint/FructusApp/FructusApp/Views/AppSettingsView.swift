//
//  AppSettingsView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct AppSettingsView: View {
    // MARK: Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: SECTION ONE
                    
                    GroupBox(
                        label:
                            HStack {
                                Text("FructusApp".uppercased())
                                    .fontWeight(.bold)
                            } //:HSTACK
                    ) {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                    // MARK: SECTION TWO
                    // MARK: SECTION THREE
                } //: VSTACK
                .navigationBarTitle(Text("App Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
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
