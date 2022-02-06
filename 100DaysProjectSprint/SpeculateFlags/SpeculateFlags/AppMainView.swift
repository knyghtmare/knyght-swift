//
//  AppMainView.swift
//  SpeculateFlags
//
//  Created by Tahsin Jahin Khalid on 6/2/22.
//

import SwiftUI

struct AppMainView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, world!")
            Text("This is another text view")
        }
        HStack {
            Text("Hello, world!")
            Text("This is another text view")
        }
        ZStack {
            Text("Hello, world!")
            Text("This is another text view")
        }
    }
}

struct AppMainView_Previews: PreviewProvider {
    static var previews: some View {
        AppMainView()
    }
}
