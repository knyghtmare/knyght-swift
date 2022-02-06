//
//  ButtonTestView.swift
//  SpeculateFlags
//
//  Created by Tahsin Jahin Khalid on 6/2/22.
//

import SwiftUI

struct ButtonTestView: View {
    var body: some View {
        Button("Delete selection", role: .destructive, action: executeDelete)
            //.buttonStyle(.borderedProminent)
            .buttonStyle(.bordered)
        Button("Button 3") { }
            .buttonStyle(.borderedProminent)
            .tint(.mint)
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
