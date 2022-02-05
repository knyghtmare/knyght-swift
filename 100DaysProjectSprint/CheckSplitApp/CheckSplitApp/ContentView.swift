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
    
    // to make the keypad vanish after entering amount
    @FocusState private var amountIsFocused: Bool
    
    // possible tip percentage values
    let tipPercentages = [10, 15, 20, 25, 0]
    
    // calculator function
    // MARK: function to calculate the total amount per person
    var totalPerPerson: Double {
        // calculate the total per person here
        let peopleCount = Double(numPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var showTipVal: Double {
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        return tipValue
    }
    
    var showGrandTotal: Double {
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        return grandTotal
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                } header: {
                    Text("Enter Amount:")
                }
                Section {
                    Picker("Percentage of Tips:", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                }
                .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                Section {
                    Picker("Number of people", selection: $numPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Text(showTipVal, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Tip Value")
                }
                Section {
                    Text(showGrandTotal, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Grand Total value")
                }
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Amount Per Person")
                }
            }
            .navigationTitle("CheckSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Done") {
                        amountIsFocused = false
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
