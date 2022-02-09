//
//  CompView.swift
//  TestingGround
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import SwiftUI

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct CompView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }
    }
}

struct CompView_Previews: PreviewProvider {
    static var previews: some View {
        CompView()
    }
}
