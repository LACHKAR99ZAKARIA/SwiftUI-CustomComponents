//
//  PopupView1.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct PopupView1: View {
    @State var isPopup: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Button {
                    isPopup = true
                } label: {
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.gray)
                        .overlay {
                            Text("Show Popup")
                                .foregroundColor(.black)
                        }
                }
            }
            if isPopup == true {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.vertical)
                    .onTapGesture {
                        isPopup = false
                    }
                VStack {
                    Spacer()
                    Text("test")
                    Spacer()
                    Button {
                        isPopup = false
                    } label: {
                        Text("cancel")
                    }
                    Spacer()

                }
                .frame(width: 100, height: 100)
                .background(Color.white)
                .cornerRadius(20).shadow(radius: 20)
            }
        }
    }
}

struct PopupView1_Previews: PreviewProvider {
    static var previews: some View {
        PopupView1()
    }
}
