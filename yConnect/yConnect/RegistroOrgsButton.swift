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
    
    var body: some View{
        Button(action: action){
            Text(title)
                .foregroundStyle(.white)
                .font(.title2)
                .padding()
                .background(backgroundColor)
                .cornerRadius(10)
        }
    }
}

struct RegistroOrgsButton_Previews: PreviewProvider{
    static var previews: some View{
        TagsButton(title: "Registro organizaciones", action: {}, backgroundColor: .colorPrincipal)
        
    }
}

