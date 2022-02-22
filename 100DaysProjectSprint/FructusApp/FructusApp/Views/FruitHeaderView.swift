//
//  FruitHeaderView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
        } //: ZSTACK
        .frame(height: 440)
    }
}

// MARK: - PREVIEW

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1]).previewLayout(.fixed(width: 375, height: 440))
    }
}
