//
//  ButtonsAnimation.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 24/7/2023.
//

import SwiftUI

struct ButtonsAnimation: View {
    var body: some View {
        VStack {
            Button("Press Me") {
                print("Button pressed!")
            }
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .clipShape(Capsule())
            Button("Press Me") {
                print("Button pressed!")
            }
            .buttonStyle(BlueButton())
            Button("Press Me") {
                print("Button pressed!")
            }
            .buttonStyle(GrowingButton())
            Button(action: {
                print("Button action")
            }) {
                HStack {
                    Image(systemName: "bookmark.fill")
                    Text("Bookmark")
                }
            }.buttonStyle(GradientButtonStyle())
            Button("Press Me") {
                print("Button pressed!")
            }
            .padding()
            .background(.black)
            .clipShape(Capsule())
            Button {
                print("t")
            } label: {
                Text("click ici")
            }
            .buttonStyle(.borderedProminent)
            Button("Borderless Button") {

            }.buttonStyle(.bordered)
            Button("Borderless Button") {

            }.buttonStyle(.plain)
        }

    }
}
struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
}
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
//            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .background(configuration.isPressed ? Color.green : Color.yellow)
            .cornerRadius(15.0)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}

struct ButtonsAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAnimation()
    }
}
