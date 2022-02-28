//
//  AnimalListItemView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 1/3/22.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text("Title")
                Text("Content")
            } //: VSTACK
        } // HSTACK
    }
}

// MARK: - PREVIEW

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
