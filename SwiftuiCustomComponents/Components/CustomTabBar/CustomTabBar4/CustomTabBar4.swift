//
//  CustomTabBar4.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct CustomTabBar4: View {
    @State var selectedIndex : Int
    @State var tabbarItems = [ "Random", "Travel", "Wallpaper" ]
    let colors: [Color] = [ .white, .blue, .green ]
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
            TabBarView4(tabbarItems: tabbarItems, selectedIndex: $selectedIndex)
                .padding(.horizontal)
        }
    }
}

struct CustomTabBar4_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar4(selectedIndex: 1)
    }
}
