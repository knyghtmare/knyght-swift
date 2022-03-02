//
//  MotionAnimationView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 2/3/22.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ZStack {
                Text("Width: \(Int(geometry.size.width)) Height: \(Int(geometry.size.height))")
            } //: ZSTACK
        } //: Geometry
    }
}

// MARK: - PREVIEW

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
