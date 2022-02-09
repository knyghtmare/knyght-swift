//
//  ContentView.swift
//  RechargeSleep
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        // Text("Hello, world!")
        //    .padding()
        Stepper("\(sleepAmount) hours", value: $sleepAmount)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
