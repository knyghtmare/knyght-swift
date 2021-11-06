//
//  ContentView.swift
//  projectThree
//
//  Created by Tahsin Jahin Khalid on 7/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
                Text("Hello!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.center)
                    .padding(.all, 20.0)
                Text("Welcome to my App!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.center)
                    .padding(.all, 20.0)
                Spacer()
            }
        }

    }
}

// MARK: Previews Section

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
