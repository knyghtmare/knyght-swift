//
//  CityPlacesApp.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 14/12/21.
//

import SwiftUI

@main
struct CityPlacesApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
