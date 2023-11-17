//
//  RiveLoader1.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 6/7/2023.
//

import SwiftUI
import RiveRuntime

struct RiveLoader1: View {
    let confetti = RiveViewModel(fileName: "confetti", stateMachineName: "State Machine 1")
    let check = RiveViewModel(fileName: "check", stateMachineName: "State Machine 1")
    @State var isLoading = false
    let isValidateLoader = true
    var body: some View {
        ZStack {
            Button {
            } label: {
                Rectangle()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.gray)
                    .overlay {
                        Text("Show Loader")
                            .foregroundColor(.black)
                    }
            }

        }
        .overlay(
            ZStack {
                if isLoading {
                    check.view()
                        .frame(width: 100, height: 100)
                        .allowsHitTesting(false)
                }
                confetti.view()
                    .scaleEffect(3)
                    .allowsHitTesting(false)
            }
        )
    }
}

struct RiveLoader1_Previews: PreviewProvider {
    static var previews: some View {
        RiveLoader1()
    }
}
