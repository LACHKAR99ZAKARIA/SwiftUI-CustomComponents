//
//  CustomTabBar1View.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 2/7/2023.
//

import SwiftUI

struct CustomTabBar1View: View {
    @State private var tabSelected: Tab = .house
    
    private var tabView: AnyView {
        switch self.tabSelected {
        case .house:
            return AnyView(CustomTabBar1House())
        case .message:
            return AnyView(CustomTabBar1Message())
        case .person:
            return AnyView(CustomTabBar1Person())
        case .leaf:
            return AnyView(CustomTabBar1Leaf())
        case .gearshape:
            return AnyView(CustomTabBar1Setting())
        }
    }
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $tabSelected) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        HStack {
                            self.tabView
                                .animation(nil, value: tabSelected)
                        }
                        .tag(tab)
                        
                    }
                }
            }
            VStack {
                Spacer()
                CustomTabBar1(selectedTab: $tabSelected)
            }
        }
    }
}

struct CustomTabBar1View_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar1View()
    }
}
