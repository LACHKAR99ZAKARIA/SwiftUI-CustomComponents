//
//  CustomTabBar7.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 6/11/2023.
//

import SwiftUI

struct CustomTabBar7: View {
    @State private var selectedIndex = 0
    let tabItems = ["Tab 1", "Tab 2", "Tab 3", "Tab 4", "Tab 5"]
    @Namespace private var menuItemTransition
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                TabView(selection: $selectedIndex) {
                    ForEach(0..<tabItems.count, id: \.self) { index in
                        Text(tabItems[index])
                            .tag(index)
                            .tabItem {
                                Text(tabItems[index])
                            }
                    }
                }
                Divider()
                    .offset(y: -24)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: UIScreen.main.bounds.width / CGFloat(tabItems.count), height: 4)
                    .offset(x: CGFloat(selectedIndex) * UIScreen.main.bounds.width / CGFloat(tabItems.count), y: -20)
                    .animation(.default, value: selectedIndex)
            }
        }
        
    }
}

#Preview {
    CustomTabBar7()
}
