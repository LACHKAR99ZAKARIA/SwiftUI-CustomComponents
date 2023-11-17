//
//  ListView.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 6/7/2023.
//

import SwiftUI

struct ListView1: View {
    var body: some View {
        VStack {
            List(0...100, id: \.self) { i in
                Text("\(i)")
            }
            .refreshable {
                print("code to run")
            }
        }
    }
}

struct ListView1_Previews: PreviewProvider {
    static var previews: some View {
        ListView1()
    }
}
