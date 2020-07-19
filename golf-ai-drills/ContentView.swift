//
//  ContentView.swift
//  golf-ai-drills
//
//  Created by C on 7/17/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            DrillsPage(drills: drillData)
                .navigationBarTitle(Text("Drills")
                    .font(.title))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
