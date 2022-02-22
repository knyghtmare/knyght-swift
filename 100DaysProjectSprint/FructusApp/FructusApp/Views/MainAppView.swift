//
//  MainAppView.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

struct MainAppView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            //Text("Fructus App").padding()
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            } //: List
            .navigationTitle("Fruits")
        } //: NavigationView
    }
}

struct MainAppView_Previews: PreviewProvider {
    static var previews: some View {
        MainAppView(fruits: fruitsData)
    }
}
