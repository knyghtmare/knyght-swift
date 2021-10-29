//
//  ContentView.swift
//  projectTwo
//
//  Created by Tahsin Jahin Khalid on 30/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .padding(.all, 20.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone 11")
            
    }
}
