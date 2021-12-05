//
//  ContentView.swift
//  ProjectFourLandmarks
//
//  Created by Tahsin Jahin Khalid on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, Jahin!")
                .fontWeight(.bold)
            .font(.title)
            HStack {
                Text("Welcome to your App").font(.subheadline)
                Spacer()
                Text("Hong Kong").font(.subheadline)
            }
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
