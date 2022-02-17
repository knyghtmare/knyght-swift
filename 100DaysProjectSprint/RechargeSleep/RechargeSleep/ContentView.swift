//
//  ContentView.swift
//  RechargeSleep
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import CoreML
import SwiftUI

struct ContentView: View {
    // var to keep track of number of sleep hours
    @State private var sleepAmount = 8.0
    // var to assign a date
    @State private var wakeUp = defaultWakeTime
    // amount in cups of coffee
    @State private var coffeeAmount = 1
    
    // add alert vars
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    // setup a default wake up time
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    /*
    let components = Calendar.current.dateComponents([.hour, .minute], from: someDate)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    */
    func calculateBedtime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)

            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            alertTitle = "Your ideal bedtime is…"
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            // something went wrong!
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your bedtime."
        }
        showingAlert = true
    }
    
    var body: some View {
        // Text("Hello, world!")
        //    .padding()
        // step is set to 0.25 which is 25% of an hour
        // that is, it's 15 minutes
        NavigationView {
            //Spacer()
            Form {
                Section {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("When do you want to wake up?")
                            .font(.headline)
                        DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                    }
                }
                Section {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Desired amount of sleep")
                            .font(.headline)
                        Text("BTW, 0.25 means 15 minutes")
                            .font(.caption)
                        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                    }
                }
                Section {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Daily coffee intake")
                            .font(.headline)
                        // is 5 cups/day safe?
                        Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups", value: $coffeeAmount, in: 1...5)
                    }
                }
            }
            .navigationTitle("RechargeSleep")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK") { }
            } message: {
                Text(alertMessage)
            }
            //Spacer()
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
