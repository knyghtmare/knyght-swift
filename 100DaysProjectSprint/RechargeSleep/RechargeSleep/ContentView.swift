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
    // amount in cups of coffee
    @State private var coffeeAmount = 1
    
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
        NavigationView {
            VStack {
                Text("When do you want to wake up?")
                            .font(.headline)
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                Text("Daily coffee intake")
                    .font(.headline)
                Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups", value: $coffeeAmount, in: 1...3)
            }
        }
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
