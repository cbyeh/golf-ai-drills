//
//  DrillButton.swift
//  golf-ai-drills
//
//  Created by C on 7/19/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI

// A series of DrillButtons in a vertical ScrollView
struct DrillsPage: View {
    
    var drills:[Drill]
    
    var body: some View {
        
        ScrollView() {
            VStack {
                ForEach (self.drills, id: \.self) {
                    drill in
                    DrillButton(drill: drill)
                        .frame(height: 250)
                }
            }
        }
        
    }
}

struct DrillsPage_Previews: PreviewProvider {
    static var previews: some View {
        DrillsPage(drills: drillData)
    }
}
