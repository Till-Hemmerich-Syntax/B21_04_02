//
//  B21_04_02App.swift
//  B21_04_02
//
//  Created by Till Hemmerich on 06.11.24.
//

import SwiftUI
import SwiftData
@main
struct B21_04_02App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [
                    Person.self
                ])
        }
    }
}
