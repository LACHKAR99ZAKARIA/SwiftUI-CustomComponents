//
//  CustomTabBar2.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct CustomTabBar2: View {
    let colors: [Color] = [ .yellow, .blue, .green, .indigo, .brown ]
        let tabbarItems = [ "Random", "Travel", "Wallpaper", "Food", "Interior Design" ]
     
        var body: some View {
            TabView {
                ForEach(colors.indices, id: \.self) { index in
                    colors[index]
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .tag(index)
                        .tabItem {
                            Image(systemName: "\(index + 1).circle")
                            Text(tabbarItems[index])
                        }
                }
            }
        }
}

struct CustomTabBar2_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar2()
    }
}
