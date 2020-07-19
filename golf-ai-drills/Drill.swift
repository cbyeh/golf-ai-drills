//
//  Drill.swift
//  golf-ai-drills
//
//  Created by C on 7/17/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI

struct Name: Codable {
    var name:String
}

struct Drill: Codable {
    var id:Int
    var title:String
    var targets:[Name]
    var benefits:[Name]
    var steps:[Name]
    var videoURL:String
}
