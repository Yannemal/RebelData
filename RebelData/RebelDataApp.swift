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
    // DATA:
    let container: ModelContainer
    
    init() {
        do{
            container = try ModelContainer(for: Video.self, Keyword.self, migrationPlan: nil)
        } catch {
            fatalError("failed to initialize model container for app on the main")
        }
    }
    
    
    var body: some Scene {
    // someSCENE:
        
        WindowGroup {
            VideosListView()
        }
        .modelContainer(container)
    }
}
