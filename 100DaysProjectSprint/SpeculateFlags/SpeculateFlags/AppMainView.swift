//
//  AppMainView.swift
//  SpeculateFlags
//
//  Created by Tahsin Jahin Khalid on 6/2/22.
//

import SwiftUI

struct AppMainView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
            Text("First")
            Text("Second")
            Text("Third")
            Spacer()
            Spacer()
        }
        HStack {
            Text("Hello, world!")
            Text("This is another text view")
        }
        ZStack {
            Text("Hello, world!")
        }.background(.red)
    }
}

struct AppMainView_Previews: PreviewProvider {
    static var previews: some View {
        AppMainView()
    }
}
