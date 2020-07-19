//
//  Drill.swift
//  golf-ai-drills
//
//  Created by C on 7/17/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI

struct Drill: Codable, Hashable {
    var id:Int
    var title:String
    var targets:[String]
    var benefits:[String]
    var steps:[String]
    var videoURL:String
}
