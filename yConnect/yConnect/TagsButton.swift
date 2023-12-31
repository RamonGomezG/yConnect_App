//
//  TagsButton.swift
//  yConnect
//
//  Created by Alumno on 29/09/23.
//

import SwiftUI

struct TagsButton: View{
    let title: String
    let action: () -> Void
    let backgroundColor: Color
    
    var body: some View{
        Button(action: action){
            Text(title)
                .foregroundStyle(.white)
                .font(.title3)
                .padding()
                .background(backgroundColor)
                .cornerRadius(10)
        }
    }
}

struct TagsButton_Previews: PreviewProvider{
    static var previews: some View{
        TagsButton(title: "Mis tags", action: {}, backgroundColor: .colorPrincipal)
        
    }
}
