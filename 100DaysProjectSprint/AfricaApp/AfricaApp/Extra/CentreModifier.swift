//
//  CentreModifier.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 3/3/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        } //: HSTACK
    }
}

