//
//  ModelSchemaV1.swift
//  RebelData
//  tut by Rebeloper
//  Student yannemal on 16NOV2023.
//

import SwiftUI
import SwiftData

enum ModelSchemaV1: VersionedSchema {
    
    static var versionIdentifier = Schema.Version(1, 0, 0)
    
    static var models: [any PersistentModel.Type] {
        [Video.self, Keyword.self]
        
    }
    
    @Model
    class Video {
        var title: String
        var Date: Date
        
        init(title: String = "") {
            self.title = title
            self.Date = .now
        }
    }
    
    @Model
    class Keyword {
        @Attribute(.unique) var title: String
        
        init(title: String = "") {
            self.title = title
            
        }
    }
}
