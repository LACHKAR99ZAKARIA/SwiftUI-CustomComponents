//
//  TabBarView.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct TabBarView3: View {
    var tabbarItems: [String]
    @Namespace private var menuItemTransition

    @Binding var selectedIndex : Int

        var body: some View {
            ScrollViewReader { scrollView in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(tabbarItems.indices, id: \.self) { index in
                         
                            TabbarItem3(name: tabbarItems[index], isActive: selectedIndex == index, namespace: menuItemTransition)
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        selectedIndex = index
                                    }
                                }
                        }
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(25)

            }

        }
}

struct TabbarItem3: View {
    var name: String
    var isActive: Bool = false
    let namespace: Namespace.ID
 
    var body: some View {
        if isActive {
            Text(name)
                .font(.subheadline)
                .padding(.horizontal)
                .padding(.vertical, 4)
                .foregroundColor(.white)
                .background(Capsule().foregroundColor(.purple))
                .matchedGeometryEffect(id: "highlightmenuitem", in: namespace)
        } else {
            Text(name)
                .font(.subheadline)
                .padding(.horizontal)
                .padding(.vertical, 4)
                .foregroundColor(.black)
        }
 
    }
}

struct TabBarView3_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar3(selectedIndex: 1)
    }
}
