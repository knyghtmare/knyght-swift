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
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable().scaleEffect()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fibres, vitamins, and much more.")
                                .font(.footnote)
                        } // HSTACK
                    } //: GROUP
                    // MARK: SECTION TWO
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "iphone")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        SettingsRowView(name: "Developer", content: "Tahsin Jahin")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Github", linkLabel: "Github Profile", linkDestination: "github.com/knyghtmare")
                    } //: GROUP
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
