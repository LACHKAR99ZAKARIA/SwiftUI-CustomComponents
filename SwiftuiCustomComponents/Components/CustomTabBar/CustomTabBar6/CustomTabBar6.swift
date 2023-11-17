//
//  CustomTabBar6.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 18/10/2023.
//

import SwiftUI

struct CustomTabBar6: View {
    @State var selectedIndex : Int = 0
    var tabBar6: [TabBar6] = [
        TabBar6(id: "1", name: "Home", view: AnyView(Text("Home"))),
        TabBar6(id: "2", name: "Favories", view: AnyView(Text("Favories"))),
        TabBar6(id: "3", name: "Adres", view: AnyView(Text("Adres"))),
        TabBar6(id: "4", name: "Chat", view: AnyView(Text("Chat"))),
        TabBar6(id: "5", name: "Profile", view: AnyView(Text("Profile"))),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            VStack {
                tabBar6[selectedIndex].view
            }
            
            Spacer()
            CustomTabs6(index: $selectedIndex, tabBar6: tabBar6)
        }.ignoresSafeArea()
    }
}

struct CustomTabs6: View {
    @Binding var index: Int
    var tabBar6: [TabBar6]
    var body: some View {
        HStack {
            ForEach(tabBar6) { bar6 in
                Text(bar6.name)
                    .padding(.bottom)
            }
        }
        .padding(.horizontal, 20)
        .padding(.all)
        .background(Color.black.opacity(0.1).cornerRadius(11))
//        .background(Color.white.cornerRadius(11))
    }
}

struct TabBar6: Identifiable {
    var id: String
    var name: String
    var view: AnyView
}

#Preview {
    CustomTabBar6()
}
