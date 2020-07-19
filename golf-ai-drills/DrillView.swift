//
//  DrillView.swift
//  golf-ai-drills
//
//  Created by C on 7/17/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI

let drills:[Drill] = decode([Drill].self, from: "./Data/Drills.json")

struct DrillView: View {
    
    var drill:Drill
    
    var body: some View {
        Text("Hellsobhjh")
    }
}

struct DrillView_Previews: PreviewProvider {
    static var previews: some View {
//    DrillView()
    DrillView(drill: drills[0])
    }
}
