//
//  ButtonTestView.swift
//  SpeculateFlags
//
//  Created by Tahsin Jahin Khalid on 6/2/22.
//

import SwiftUI

struct ButtonTestView: View {
    var body: some View {
        VStack(spacing: 20) {
        HStack(spacing: 20) {
            Button("Delete selection", role: .destructive, action: executeDelete)
                //.buttonStyle(.borderedProminent)
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
        }
        HStack {
            // custom button
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
            // button with image + text
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            // image only button
            Button {
                print("Edit button was tapped")
            } label: {
                Image(systemName: "pencil")
            }
        }
        }
    }
    
    func executeDelete() {
        print("Deleting...")
    }
}

struct ButtonTestView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTestView()
    }
}
