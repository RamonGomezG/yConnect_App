//
//  ButtonComponent.swift
//  yConnect
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct ButtonComponent: View {
    var title: String
    
    var body: some View {
        HStack {
            Text("\(title)")
                .foregroundStyle(.white)
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(.principalDarker)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
        }    }
}

#Preview {
    ButtonComponent(title: "Botón")
}
