//
//  FruitNutrientsView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: Properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamains","Minerals"]
    
    // MARK: BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrional Value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                } //: LOOP
            } //: GROUP
        } //: BOX
    }
}

// MARK: PREVIEW

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[9])
            .preferredColorScheme(.light)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
