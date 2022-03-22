//
//  SmartToDoApp.swift
//  SmartToDo
//
//  Created by Tahsin Jahin Khalid on 22/3/22.
//

import SwiftUI

@main
struct SmartToDoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
