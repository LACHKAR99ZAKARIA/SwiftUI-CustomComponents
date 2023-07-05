//
//  CustomTabBar3.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct CustomTabBar3: View {
    @State var selectedIndex : Int
    @State var tabbarItems = [ "Random", "Travel", "Wallpaper", "Food", "Interior Design" ]
    let colors: [Color] = [ .yellow, .blue, .green, .indigo, .brown ]
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedIndex) {
                ForEach(colors.indices, id: \.self) { index in
                    colors[index]
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .tag(index)
                        .ignoresSafeArea()
                }
            }
            .ignoresSafeArea()
         
            TabBarView3(tabbarItems: tabbarItems, selectedIndex: $selectedIndex)
                .padding(.horizontal)
        }
        TabBarView3(tabbarItems: [ "Random", "Travel", "Wallpaper", "Food", "Interior Design" ], selectedIndex: $selectedIndex).previewDisplayName("TabBarView")
    }
}

struct CustomTabBar3_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar3(selectedIndex: 1)
    }
}
