//
//  CustomModView.swift
//  TestingGround
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct CustomModView: View {
    var body: some View {
        VStack {
            Text("Dummy Text")
                .titleStyle()
                .watermarked(with: "Hacking with Swift")
            Color.blue
                .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift")
        }
    }
}

struct CustomModView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModView()
    }
}
