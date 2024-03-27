//
//  test_appApp.swift
//  test-app
//
//  Created by Orangeodc4 on 26/3/2024.
//

import SwiftUI

@main
struct test_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
