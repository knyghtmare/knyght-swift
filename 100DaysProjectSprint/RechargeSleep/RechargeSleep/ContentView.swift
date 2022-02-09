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
    
    /*
    let components = Calendar.current.dateComponents([.hour, .minute], from: someDate)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    */
    
    var body: some View {
        // Text("Hello, world!")
        //    .padding()
        // step is set to 0.25 which is 25% of an hour
        // that is, it's 15 minutes
        //VStack {
            Form {
                Section {
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                    DatePicker("Please enter timr", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                    DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
                }
                Section {
                    Text(Date.now.formatted(date: .long, time: .shortened))
                }
            }
        //}
        .padding(20)
        .background(.white)
        //.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
