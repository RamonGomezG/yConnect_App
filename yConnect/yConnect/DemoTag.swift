//
//  DemoTag.swift
//  yConnect
//
//  Created by Alumno on 02/10/23.
//

import SwiftUI

struct DemoTag: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text("\(title)")
                .foregroundStyle(Color("TitleColor"))
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
        }
    }
}

#Preview {
    DemoTag(title: "Etiqueta")
}
