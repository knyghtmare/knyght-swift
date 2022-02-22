//
//  SourceLinkView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.org")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

// MARK: - PREVIEW

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
