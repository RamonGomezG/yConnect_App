//
//  TagComponentOrg.swift
//  yConnect
//
//  Created by Alumno on 28/09/23.
//

import SwiftUI

struct TagComponentOrg: View {
    var title: String
    
    var body: some View {
        HStack {
            Text("uno dos ")
                .foregroundStyle(Color.white)
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color("BackColor"))
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
        }
    }
}

#Preview {
    TagComponentOrg(title: "Etiqueta")
}
