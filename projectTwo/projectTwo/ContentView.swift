//
//  ContentView.swift
//  projectTwo
//
//  Created by Tahsin Jahin Khalid on 30/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                ZStack(alignment: .center, content: {
                    RoundedRectangle(cornerRadius: 50.0)
                        .stroke(lineWidth: 5)
                    Text("Hello, world!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                })
                ZStack(alignment: .center, content: {
                    RoundedRectangle(cornerRadius: 50.0)
                        .stroke(lineWidth: 5)
                    Text("Hello, world!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                })
            }
        }
        .padding(.horizontal, 20.0)
        .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
        
        //return RoundedRectangle(cornerRadius: 50.0)
        //    .stroke(lineWidth: 5)
        //    .padding(.horizontal, 20.0)
        //    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
        
        /*
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .padding(.all, 20.0)
        }
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone 11")
            
    }
}
