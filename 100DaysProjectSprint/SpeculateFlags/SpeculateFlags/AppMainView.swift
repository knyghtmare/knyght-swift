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
            // to fill whole safe area
            Color.red
                // to frame this color
                .frame(width: 200, height: 200)
            Text("Hello, world!")
        }
        // otherwise just use .background(.red)
    }
}

struct AppMainView_Previews: PreviewProvider {
    static var previews: some View {
        AppMainView()
    }
}
