//
//  FruitCardView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            // Fruit: Image
            // Fruit: Title
            Text("Blueberry")
            // Fruit: Headline
            // Button: Start
        } //: VStack
    }
}

// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
