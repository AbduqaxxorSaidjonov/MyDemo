//
//  MyDemoApp.swift
//  MyDemo
//
//  Created by Abduqaxxor on 28/1/22.
//

import SwiftUI

@main
struct MyDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
