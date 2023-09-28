//
//  BottomBryan.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct MyButton: View {
    let title: String
    let action: () -> Void
//    let backgroundColor: Color

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .padding()
//                .background(backgroundColor)
                .cornerRadius(10)
        }
    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(title: "Terminar", action: {}) //backgroundColor: .white)
    }
}
