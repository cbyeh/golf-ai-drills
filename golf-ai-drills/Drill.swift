//
//  Drill.swift
//  golf-ai-drills
//
//  Created by C on 7/17/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI

// Our parsed json into an array of Drill objects
let drillData = decode([Drill].self, from: "Drills.json")

// For json formatting
struct Name: Codable, Hashable {
    var name:String
}

// A high level drill represented by its json identifiers
struct Drill: Codable, Hashable {
    static func == (lhs: Drill, rhs: Drill) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id:Int
    var title:String
    var targets:[Name]
    var benefits:[Name]
    var steps:[Name]
    var videoURL:String
}
