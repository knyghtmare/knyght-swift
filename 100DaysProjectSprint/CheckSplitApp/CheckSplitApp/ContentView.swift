//
//  ContentView.swift
//  CheckSplitApp
//
//  Created by Tahsin Jahin Khalid on 4/2/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: variables of the app with default values
    // initialise variables for the app
    // currency
    @State private var checkAmount = 0.0
    // number of splitters
    @State private var numPeople = 2
    // tip percentage
    @State private var tipPercentage = 20
    
    // possible tip percentage values
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numPeople) {
                            ForEach(2 ..< 30) {
                                Text("\($0) people")
                            }
                        }
                }
                /*
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
                */
            }
        }
        .navigationTitle("CheckSplit")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
