//
//  ContentView.swift
//  CheckSplitApp
//
//  Created by Tahsin Jahin Khalid on 4/2/22.
//

import SwiftUI

struct ContentView: View {
    /* In the case of storing simple program state like the
     number of times a button was tapped, we can use a
     property wrapper from SwiftUI called @State, like this:
     */
    @State private var tapCount = 0
    
    @State private var name = ""
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your Name", text: $name)
                    Text("Your name is \(name)")
                }
                Section {
                    Button("Tap Count: \(tapCount)") {
                        self.tapCount += 1
                    }
                }
                ForEach(0..<100) {
                    Text("Row \($0)")
                }
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }
            .navigationTitle("CheckSplit")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
