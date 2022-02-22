//
//  SettingsRowView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: PROPERTIES
    
    var name: String
    // make content optional
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(name).foregroundColor(Color.gray)
            Spacer()
            if (content != nil) {
                Text(content!)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up,right.square").foregroundColor(Color.pink)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } //: HSTACK
    }
}

// MARK: PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Knyght")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
