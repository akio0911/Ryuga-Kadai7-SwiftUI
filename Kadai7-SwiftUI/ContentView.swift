//
//  ContentView.swift
//  Kadai7-SwiftUI
//
//  Created by Ryuga on 2023/03/03.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .white
        UITabBar.appearance().backgroundColor = .black
    }

    var body: some View {
        TabView{
            PlusView()
                .modifier(CustomTextFieldStyle())
                .tabItem{
                    Label("Plus", systemImage: "plus.circle")
                }
            MinusView()
                .modifier(CustomTextFieldStyle())
                .tabItem{
                    Label("Minus", systemImage: "minus.circle")
                }
        }
    }
}

struct CustomTextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
