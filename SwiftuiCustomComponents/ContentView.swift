//
//  ContentView.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 2/7/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section("TabBar") {
                        NavigationLink(destination: CustomTabBar1(selectedTab: .constant(.house))) {
                            Text("TabBar 1")
                        }
                        NavigationLink(destination: CustomTabBar2()) {
                            Text("TabBar 2")
                        }
                        NavigationLink(destination: CustomTabBar3(selectedIndex: 1)) {
                            Text("TabBar 3")
                        }
                        NavigationLink(destination: CustomTabBar4(selectedIndex: 1)) {
                            Text("TabBar 4")
                        }
                        NavigationLink(destination: CustomTabBar5()) {
                            Text("TabBar 5")
                        }
                    }
                    Section("Loaders") {
                        NavigationLink(destination: Loader1()) {
                            Text("Loader 1")
                        }
                    }
                    Section("Expanding View") {
                        NavigationLink(destination: ExpandingView1()) {
                            Text("Expanding View 1")
                        }
                    }
                    Section("Popups View"){
                        NavigationLink(destination: PopupView1()) {
                            Text("Popup View 1")
                        }
                        NavigationLink(destination: AlertVIew1()) {
                            Text("Alert Views 1")
                        }
                    }
                    Section("List View with Loader"){
                        NavigationLink(destination: ListView1()) {
                            Text("List Views 1")
                        }
                    }
                    Section("Animation Exemples"){
                        NavigationLink(destination: TextFIeld(textLabel: "")) {
                            Text("Text Flields Exemples")
                        }
                        NavigationLink(destination: ButtonsAnimation()) {
                            Text("Button Animation")
                        }
                    }
                    Section("Rive exemples"){
                        Section("Loader") {
                            NavigationLink(destination: TextFIeld(textLabel: "")) {
                                Text("Rive Loader 1")
                            }
                        }
                    }
                    Section("Video Player"){
                        NavigationLink(destination: VideoPlayer1()) {
                            Text("Video Player 1")
                        }
                        NavigationLink(destination: YoutubeVideoPlayer1()) {
                            Text("Youtube Video Player 1")
                        }
                    }
                }
            }
        }
        .colorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
