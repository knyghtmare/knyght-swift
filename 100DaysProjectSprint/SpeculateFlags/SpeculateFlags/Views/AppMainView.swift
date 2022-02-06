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
        ZStack {
            VStack(spacing: 0) {
                //LinearGradient(gradient: Gradient(colors: [.white, .green]), startPoint: .bottom, endPoint: .top)
                RadialGradient(gradient: Gradient(colors: [.blue, .white]), center: .center, startRadius: 20, endRadius: 200)
            }

            // to add glass effect
            Text("Your content")
                .foregroundStyle(.secondary)
                //.foregroundColor(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct AppMainView_Previews: PreviewProvider {
    static var previews: some View {
        AppMainView()
    }
}
