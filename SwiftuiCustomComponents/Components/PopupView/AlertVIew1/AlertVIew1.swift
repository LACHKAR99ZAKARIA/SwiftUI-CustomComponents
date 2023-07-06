//
//  AlertVIew1.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 5/7/2023.
//

import SwiftUI

struct AlertVIew1: View {
    @State var isAlert1: Bool = false
    @State var isAlert2: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    isAlert1 = true
                }) {
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.gray)
                        .overlay {
                            Text("Show Alert 1")
                                .foregroundColor(.black)
                        }
                }
                Button(action: {
                    isAlert2 = true
                }) {
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.gray)
                        .overlay {
                            Text("Show Alert 1")
                                .foregroundColor(.black)
                        }
                }
            }
            .alert("Alert 1", isPresented: $isAlert1) {
                Button("OK", role: .cancel) { }
            }
            .alert(isPresented: $isAlert2) {
                Alert(title: Text("alert title"), message: Text("alert message"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct AlertVIew1_Previews: PreviewProvider {
    static var previews: some View {
        AlertVIew1()
    }
}
