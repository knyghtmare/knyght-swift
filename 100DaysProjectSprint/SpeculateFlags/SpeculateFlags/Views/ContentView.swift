//
//  ContentView.swift
//  SpeculateFlags
//
//  Created by Tahsin Jahin Khalid on 6/2/22.
//

import SwiftUI

struct ContentView: View {
    /*
    var body: some View {
        // AppMainView()
        // Text("Time to Make App")
        //RealAppView()
    }
    */
    // array of countries which are shuffled each time
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    // how to pick correct answer
    @State private var correctAnswer = Int.random(in: 0...2)
    
    // show alert
    @State private var showingScore = false
    // this property to store the title that will be shown inside the alert:
    @State private var scoreTitle = ""
    
    // show score tracker
    @State private var scoreCounter = 0
    
    var body: some View {
        ZStack {
            // LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            //    .ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.70, green: 0.70, blue: 0.30), location: 0.3),
                .init(color: Color(red: 0.10, green: 0.50, blue: 0.50), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack {
                Text("Guess the Flag")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.white)
                VStack(spacing: 20) {
                    VStack(spacing: 20) {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3) { number in
                        Button {
                           // flag was tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                //.background(.ultraThinMaterial)
                .alert(scoreTitle, isPresented: $showingScore) {
                    Button("Continue", action: askQuestion)
                } message: {
                    Text("Your score is \(scoreCounter)")
                }
                Text("Score: \(scoreCounter)")
                    .foregroundColor(.white)
                    .font(.title.bold())
            }
            .padding()
        }
    }
    
    // function to check if right/wrong
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            scoreCounter += 1
        } else {
            scoreTitle = "Wrong"
            scoreCounter -= 1
        }

        showingScore = true
    }
    
    // repeat after correct answer is given for a country
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
