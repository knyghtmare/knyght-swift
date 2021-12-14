//
//  ContentView.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 14/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Orchard Point")
                .font(.title)
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Dhanmondi"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Dhaka City"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
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
