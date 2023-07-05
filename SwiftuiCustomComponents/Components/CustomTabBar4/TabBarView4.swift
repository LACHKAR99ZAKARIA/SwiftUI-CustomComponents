//
//  TabBarView4.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct TabBarView4: View {
    var tabbarItems: [String]
    @Namespace private var menuItemTransition

    @Binding var selectedIndex : Int

        var body: some View {
                    HStack {
                        ForEach(tabbarItems.indices, id: \.self) { index in
                         
                            TabbarItem4(name: tabbarItems[index], isActive: selectedIndex == index, namespace: menuItemTransition)
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        selectedIndex = index
                                    }
                                }
                            Spacer()
                        }
                    }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(25)
        }
}

struct TabbarItem4: View {
    var name: String
    var isActive: Bool = false
    let namespace: Namespace.ID
 
    var body: some View {
        if isActive {
            VStack {
                Capsule()
                    .frame(width: 50,height: 1)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "topCapsule", in: namespace)
                Text(name)
                    .font(.subheadline)
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    .foregroundColor(.white)
                    .background(Capsule().foregroundColor(.blue))
                    .matchedGeometryEffect(id: "highlightmenuitem", in: namespace)
                Capsule()
                    .frame(width: 50,height: 1)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "buttomCapsule", in: namespace)
            }
        } else {
            VStack {
                Text(name)
                    .font(.subheadline)
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                    .foregroundColor(.black)
            }
        }
 
    }
}

struct TabBarView4_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar4(selectedIndex: 1)
    }
}
