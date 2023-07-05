//
//  CustomTabBar.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 2/7/2023.
//

import SwiftUI

enum Tab1: String, CaseIterable {
    case house
    case message
    case person
    case leaf
    case gearshape
}

struct CustomTabBar1: View {
    @Binding var selectedTab: Tab1
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    private var tabColor: Color {
        switch selectedTab {
        case .house:
            return .blue
        case .message:
            return .indigo
        case .person:
            return .purple
        case .leaf:
            return .green
        case .gearshape:
            return .orange
        }
    }
    
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab1.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .frame(width: 60, height: 60)
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                        .foregroundColor(tab == selectedTab ? tabColor : .gray)
                        .background(tab == selectedTab ? .white : .clear)
                        .font(.system(size: 20))
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .padding(.vertical)
//            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding()
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar1(selectedTab: .constant(.house))
    }
}
