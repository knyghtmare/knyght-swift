//
//  StartButtonView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button(action: {
            print("Exit the Onboarding")
        }) {
            HStack {
                Text("Start")
            }
        } //: Button
        .accentColor(Color.white)
    }
}

// MARK: - Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
