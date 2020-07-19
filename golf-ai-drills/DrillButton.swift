//
//  DrillView.swift
//  golf-ai-drills
//
//  Created by C on 7/17/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI

// A single Drill represented by an image and basic information
struct DrillButton: View {
    
    var drill:Drill
    
    var body: some View {
        VStack() {
            VStack {
                Image("bg" + String(Int.random(in: 1 ... 4)))
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 200)
                    .cornerRadius(12)
                    .shadow(radius: 8)
                    .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Text(drill.title)
                .font(.headline)
                .multilineTextAlignment(.leading)
            Text(drill.benefits[0].name + " and ...")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .lineLimit(1)
        }
    }
}

struct DrillView_Previews: PreviewProvider {
    static var previews: some View {
        //    DrillView()
        DrillButton(drill: drillData[0])
    }
}
