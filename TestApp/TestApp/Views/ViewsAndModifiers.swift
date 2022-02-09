//
//  ViewsAndModifiers.swift
//  TestApp
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import SwiftUI

struct ViewsAndModifiers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
    }
}

struct ViewsAndModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndModifiers()
    }
}
