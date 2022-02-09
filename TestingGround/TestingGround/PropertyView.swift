//
//  PropertyView.swift
//  TestingGround
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import SwiftUI

struct PropertyView: View {
    let motto1 = Text("Vaeler Morgulis")
    let motto2 = Text("Winter is Coming")
    
    var body: some View {
        VStack {
            motto1
                .foregroundColor(.red)
            motto2
                .font(.largeTitle)
        }
    }
}

struct PropertyView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyView()
    }
}
