//
//  RebelDataApp.swift
//  RebelData
//  tut by Rebeloper
//  Student yannemal on 16NOV2023.
//

import SwiftUI
import SwiftData

@main

struct RebelDataApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Video.self)
    }
}
