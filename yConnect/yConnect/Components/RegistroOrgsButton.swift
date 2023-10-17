//
//  RegistroOrgsButton.swift
//  yConnect
//
//  Created by Alumno on 16/10/23.
//

import SwiftUI

struct RegistroOrgsButton: View{
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
                title: Text("Registro enviado"),
                message: Text(""),
                dismissButton: .default(Text("Cerrar")){
                    action()
                }
            )
        }
    }
}

struct RegistroOrgsButton_Previews: PreviewProvider{
    static var previews: some View{
        RegistroOrgsButton(title: "Terminar", action: {}) //backgroundColor: .white)
    }
}
