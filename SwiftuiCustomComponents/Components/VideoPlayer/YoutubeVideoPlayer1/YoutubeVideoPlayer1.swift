//
//  YoutubeVideoPlayer1.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 3/8/2023.
//

import SwiftUI
import WebKit

struct YoutubeVideoPlayer1: View {
    var body: some View {
        WebView(url: "https://www.youtube.com/embed/v8g9Ps9bjI8")
    }
}

struct WebView: UIViewRepresentable {
    let url: String
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

struct YoutubeVideoPlayer1_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeVideoPlayer1()
    }
}
