//
//  CustomTabBar5.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct CustomTabBar5: View {
    @State var index = 0
        var body: some View {
            VStack {
                TabBarView5(index: $index)
                TabView(selection: $index) {
                    ForEach (0..<5) { pageId in
                        Text("Page \(pageId)").tag(pageId)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
        }
}

struct CustomTabBar5_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar5()
    }
}
