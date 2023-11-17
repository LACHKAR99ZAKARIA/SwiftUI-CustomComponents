//
//  TransitionExemple.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 6/7/2023.
//

import SwiftUI
import Combine

struct TextFIeld: View {
    @State var textLabel: String
    @Namespace private var menuItemTransition
    @FocusState var isTextField: Bool
    var body: some View {
        ZStack {
            VStack {
                ScrollView {
                    TextFieldFormView(namespace: menuItemTransition, textInput: $textLabel,
                                      textLabel: "Test"
                    )
                    .padding(.all)
                    .focused($isTextField)
                    .onTapGesture {
                        isTextField = true
                    }
                    .onSubmit {
                        isTextField = false
                    }
                }
            }
            .onTapGesture {
                isTextField = false
            }
        }
    }
}

struct TextFieldFormView: View {
    let namespace: Namespace.ID
    @Binding var textInput: String
    @State var textLabel: String
    @State var textBefore: String = ""
    @State private var isEditing = false
    var cancellables = Set<AnyCancellable>()
    var body: some View {
        VStack {
            if isEditing || textInput != ""{
                HStack {
                    Text(textLabel)
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "textField", in: namespace)
                    Spacer()
                }
            }
            if isEditing {
                
            }
            HStack {
                TextField("", text: $textInput) {editing in
                    isEditing = editing
                }
                .overlay {
                    HStack {
                        if isEditing == false && textInput == ""{
                            HStack {
                                Text(textLabel)
                                    .font(.system(size: 16))
                                    .foregroundColor(.gray)
                                    .matchedGeometryEffect(id: "textField", in: namespace)
                                Spacer()
                            }
                        }
                    }
                }
            }
            Divider()
        }
    }
}

struct TextFIeld_Previews: PreviewProvider {
    static var previews: some View {
        TextFIeld(textLabel: "")
    }
}
