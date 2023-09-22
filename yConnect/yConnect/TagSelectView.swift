//
//  TagSelectView.swift
//  yConnect
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct TagSelectView: View {
    var tags = ["Terapia", "Psicología", "Autismo", "Niños", "Ascesoría", "Exámen"]
    
    var body: some View {
        ZStack{
            Color.colorPrincipal.ignoresSafeArea()
            ScrollView {
                VStack {
                    Spacer()
                        .frame(height: 200)
                    Image("yConnect")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300 ,height: 50)
                    HStack {
                        Text("Elige al menos 5 etiquetas que se ajusten a la ayuda que buscas...")
                            .foregroundStyle(Color.white)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.top, 15)
                    }
                        .frame(width: 300)
                    SearchView() //cambiar el placeholder
                    //Grid de etiquetas
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 5) {
                            ForEach(tags, id: \.self) { tag in
                                TagComponent(title: tag)
                            }
                        }
                        .frame(width: 350)
                    }
                    
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TagSelectView()
}
