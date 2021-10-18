//
//  CalculatingAmountApp.swift
//  CalculatingAmountApp
//
//  Created by Eldar Haseljic on 10/18/21.
//

import SwiftUI

@main
struct CalculatingAmountApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
