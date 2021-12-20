//
//  Title.swift
//  TestApp
//
//  Created by Tahsin Jahin Khalid on 21/12/21.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Authenticator")
            .font(.title)
            .bold()
            .padding()
            .foregroundColor(.white)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
            .background(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}
