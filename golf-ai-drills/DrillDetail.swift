//
//  DrillDetail.swift
//  golf-ai-drills
//
//  Created by C on 7/19/20.
//  Copyright © 2020 C. All rights reserved.
//

import SwiftUI
import AVKit

let defaultUrl = "https://urldefense.com/v3/__https://swing-videos.s3.us-east-2.amazonaws.com/Swing*Videos/tiptoeDrillFull__;Kw!!Mih3wA!QkXFNPs6aJBJFMvVgEm23mUed3pN6vfFGpUUZeVaCk_wIPRRcTs1CXPBrz40dg$"

struct DrillDetail: View {
    
    var drill:Drill
    
    var body: some View {
        VStack {
            Text("Targets")
                .font(.headline)
                .padding(.bottom, -10.0)
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(drill.targets, id: \.self) {
                        target in
                        Text(target.name + "  \u{00B7}")
                            .font(.footnote)
                    }
                }
            }
            MediaPlayer(url: drill.videoURL).frame(height: UIScreen.main.bounds.height / 2)
            Text("Benefits")
                .font(.headline)
                .padding(.bottom, -10.0)
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(drill.benefits, id: \.self) {
                        benefit in
                        Text(benefit.name + "  \u{00B7}")
                            .font(.footnote)
                    }
                }
            }
            .cornerRadius(12)
            Divider()
            List {ForEach(drill.steps, id: \.self) {
                step in
                Text("\u{2022} " + step.name)
                    .font(.body)
                }
            }
            .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .listStyle(PlainListStyle())
        }
        .padding(.top, -8.0)
    }
    
}

struct DrillDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrillDetail(drill: drillData[0])
    }
}

struct MediaPlayer: UIViewControllerRepresentable {
    
    // Not initialized on call? May need init()
    var url:String
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MediaPlayer>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let player = AVPlayer(url: (URL(string: self.url) ?? URL(string: defaultUrl))!)
        controller.player = player
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<MediaPlayer>) {
    }
    
    
    
}
