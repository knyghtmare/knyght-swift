//
//  ContentView.swift
//  projectFour
//
//  Created by Tahsin Jahin Khalid on 18/12/21.
//

import SwiftUI

struct ContentView: View {
    var valText = "45"
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Enter Amount:")
                    .padding()
                HStack {
                    Spacer()
                    TextField("$123.45", text: <#Binding<String>#>)
                    Spacer()
                }
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Text("0%")
                Spacer()
                Text("10%")
                Spacer()
                Text("20%")
                Spacer()
            }
            Spacer()
            VStack{
                Spacer()
                Text("CALCULATE").bold().padding(2)
                    .foregroundColor(.green)
                    .background(.black)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
