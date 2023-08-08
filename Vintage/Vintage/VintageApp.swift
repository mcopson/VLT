//
//  VintageApp.swift
//  Vintage
//
//  Created by Matthew Copson on 05/08/2023.
//

import SwiftUI

@main
struct VintageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
