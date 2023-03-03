//
//  PlusView.swift
//  Kadai7-SwiftUI
//
//  Created by Ryuga on 2023/03/03.
//

import SwiftUI

struct PlusView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var plusResult:String = "Label"

    var body: some View {
        ZStack {
            Color.indigo
                .ignoresSafeArea()

            VStack(spacing: 16) {
                TextField("", text: $number1)
                    .frame(width: 200)
                TextField("", text: $number2)
                    .frame(width: 200)

                Button("Button"){
                    let num1 = Double(number1) ?? 0
                    let num2 = Double(number2) ?? 0
                    plusResult = String(num1 + num2)
                }

                Text("\(plusResult)")
                Spacer()
            }
        }
    }
}


struct PlusView_Previews: PreviewProvider {
    static var previews: some View {
        PlusView()
    }
}
