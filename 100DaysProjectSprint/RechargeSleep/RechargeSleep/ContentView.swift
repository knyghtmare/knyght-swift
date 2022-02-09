//
//  ContentView.swift
//  RechargeSleep
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import SwiftUI

struct ContentView: View {
    // var to keep track of number of sleep hours
    @State private var sleepAmount = 8.0
    // var to assign a date
    @State private var wakeUp = Date.now
    
    var body: some View {
        // Text("Hello, world!")
        //    .padding()
        // step is set to 0.25 which is 25% of an hour
        // that is, it's 15 minutes
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            DatePicker("Please enter a date", selection: $wakeUp)
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
