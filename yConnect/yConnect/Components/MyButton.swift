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
    @State private var showAlert = false
//    let backgroundColor: Color

    var body: some View {
        Button(action: {
            showAlert = true
        }) {
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .padding()
//                .background(backgroundColor)
                .cornerRadius(10)
        }
        .alert(isPresented: $showAlert){
            Alert(
                title: Text("Datos actualizados"),
                message: Text(""),
                dismissButton: .default(Text("Cerrar")){
                    action()
                }
            )
        }
    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(title: "Terminar", action: {}) //backgroundColor: .white)
    }
}
