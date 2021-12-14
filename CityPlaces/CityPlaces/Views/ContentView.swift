//
//  ContentView.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 14/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300).ignoresSafeArea(edges: .top)
            // trying to fit the imageview along the boundary
            // of mapview and the text
            ImageView().offset(y: -105).padding(.bottom, -200)
            // info text
            VStack(alignment: .leading) {
                Text("Orchard Point")
                    .font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Dhanmondi"/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(/*@START_MENU_TOKEN@*/"Dhaka City"/*@END_MENU_TOKEN@*/)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                                    .font(.title2)
                Text("This is a shopping complex in Dhanmondi, Dhaka City. Has lots of shops and food places inside.")
            }
            .padding(.all)
            // push to the top of screen
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
