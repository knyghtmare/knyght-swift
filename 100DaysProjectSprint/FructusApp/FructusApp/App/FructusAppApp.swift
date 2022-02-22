//
//  FructusAppApp.swift
//  FructusApp
//
//  Created by Tahsin Jahin Khalid on 22/2/22.
//

import SwiftUI

@main
struct FructusAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if !isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
