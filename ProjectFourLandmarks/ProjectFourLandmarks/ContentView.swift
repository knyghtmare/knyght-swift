//
//  ContentView.swift
//  ProjectFourLandmarks
//
//  Created by Tahsin Jahin Khalid on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            mapviewtest().frame(height: 300).ignoresSafeArea(edges: .top)
            
            CircleImage()
                .padding(.bottom, -130.0)
                .offset(y: -130.0)
            
            VStack(alignment: .leading) {
                Text("Hello, Jahin!")
                    .fontWeight(.bold)
                .font(.title)
                HStack {
                    Text("Welcome to your App").font(.subheadline)
                    Spacer()
                    Text("Home").font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()

                Text("About Me")
                                    .font(.title2)
                Text("Descriptive text goes here.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

            }
            .padding(.all)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
