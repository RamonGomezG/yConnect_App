//
//  PostsView.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        ZStack{
            Color.colorPrincipal.ignoresSafeArea()
            ScrollView {
                LogoView()
                VStack{
                    HStack{
                        NavigationLink {
                        }
                        label: {
                            Image(systemName: "line.3.horizontal")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                }
                        .padding(.leading, 20)
                        .padding(.trailing, -15)
                        SearchView()
                    }
                }
                
                Text("Publicaciones")
                    .font(.title)
                    .foregroundStyle(Color.principalDarker)
                    .padding(.top, 1)
                
                //Despliegue de posts
                PostItemView(title: "a", igUser: "@yCo_fundacion", imageName: "imagen1", postDate: "25 de Septiembre", postCaption: "Esta es una descripción genérica")
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PostsView()
}
