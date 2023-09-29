//
//  yConnectApp.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI
import SwiftData

@main
struct yConnectApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
//            Estamos haciendo pruebas: 4
        }
        .modelContainer(for: Item.self)
    }
}
