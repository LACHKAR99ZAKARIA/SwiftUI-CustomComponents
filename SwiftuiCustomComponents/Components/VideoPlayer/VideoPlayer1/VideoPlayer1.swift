//
//  VideoPlayer1.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 3/8/2023.
//

import SwiftUI
import AVKit

struct VideoPlayer1: View {
    var body: some View {
        ZStack {
            VideoPlayer(player: AVPlayer(url:  URL(string: "https://www.youtube.com/watch?v=v8g9Ps9bjI8")!)) {
                VStack {
                    Text("Watermark")
                        .foregroundStyle(.black)
                        .background(.white.opacity(0.7))
                    Spacer()
                }
                .frame(width: 400, height: 300)
            }
        }
    }
}

struct VideoPlayer1_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayer1()
    }
}
