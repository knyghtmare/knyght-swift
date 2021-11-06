//
//  ContentView.swift
//  projectThree
//
//  Created by Tahsin Jahin Khalid on 7/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.green)
            .multilineTextAlignment(.center)
            .padding([.leading, .bottom, .trailing], 20.0)
    }
}

// MARK: Previews Section

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
