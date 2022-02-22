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
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                            SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        } //: Toggle
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } //: GROUP
                    // MARK: SECTION THREE
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Tahsin Jahin")
                            
                        SettingsRowView(name: "Designer", content: "Tahsin Jahin")
                            
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                            
                        SettingsRowView(name: "Github", linkLabel: "Github Profile", linkDestination: "github.com/knyghtmare")
                            
                        SettingsRowView(name: "Dribbble", linkLabel: "Profile", linkDestination: "dribbble.com/tahsinjahin")
                            
                        SettingsRowView(name: "SwiftUI", content: "3")
                            
                        SettingsRowView(name: "Swift", content: "v5.0")
                            
                    } //: GROUP
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
