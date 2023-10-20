//
//  RegistroOrgsButton.swift
//  yConnect
//
//  Created by Alumno on 29/09/23.
//

import SwiftUI

struct RegistroOrgsButton: View{
    let title: String
    let action: () -> Void
    let backgroundColor: Color
    @State private var showAlert = false
    
    var body: some View{
        Button(action: {
            showAlert = true
        }){
            Text(title)
                .foregroundStyle(.white)
                .font(.title2)
                .padding()
                .background(backgroundColor)
                .cornerRadius(10)
        }
        .alert(isPresented: $showAlert){
            Alert(
                title: Text("Se ha enviado el registro"),
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
            RegistroOrgsButton(title: "Registro organizaciones", action: {}, backgroundColor: .colorPrincipal)
            
        }
    }
