//
//  PrimaryButton.swift
//  TestApp
//
//  Created by Tahsin Jahin Khalid on 21/12/21.
//

import SwiftUI

struct PrimaryButton: View {
    var image: String?
    var showImage: Bool = true
    var text: String
    
    var body: some View {
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        HStack {
            if showImage {
                Image(systemName: image ?? "person.fill")
            }
            Text(text)
        }
        // what you need to do to get the effects
        // that you normally get in Figma/XD
        .padding()
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(30)
        .shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(image: "faceid", text: "Login with FaceID")
    }
}
