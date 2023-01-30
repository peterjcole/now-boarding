//
//  Now_BoardingApp.swift
//  Now Boarding
//
//  Created by Peter Cole on 25/01/2023.
//

import SwiftUI

@main
struct Now_BoardingApp: App {
    @StateObject private var modelData = ModelData()
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
