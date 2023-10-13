//
//  orgPostsSection.swift
//  yConnect
//
//  Created by Alumno on 13/10/23.
//

import SwiftUI
import Kingfisher

struct OrgPostsSection: View {
    @State var postsModel = PostsModel()
    var org: Organization
    let rows = [
            GridItem(.fixed(175), spacing: 0),
            GridItem(.fixed(175), spacing: 0),
        ]


        var body: some View {
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 0) {
                ForEach(postsModel.posts) { item in
                    // Contenido de cada celda de la cuadrícula
                    KFImage(URL(string: item.Image))
                        .resizable()
                        //.padding(0)
                        .frame(width:175, height: 175) // Ajusta el tamaño de cada celda
                        .border(Color.black) // Agrega un borde opcional
                }
            }
        }
        //.aspectRatio(contentMode: .fill)
        .frame(width: 350, height: 300)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            VStack{
                Spacer()
                HStack {
                    Text("Publicaciones")
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(Color.white.opacity(0.85))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    Spacer()
                }
                .padding(.bottom, 10)
                .padding(.leading, 10)
            }
            .frame(width: 350, height: 300)
            //.background(Color.principalDarker)
        )
        .shadow(radius: 2)
        .padding(5)
        .onAppear{
            postsModel.fetchPostsWithOrgaizationIGURL(url: org.Igtag, orgName: org.Name)
            debugPrint("fetching...")
            debugPrint(postsModel.posts)
        }
    }
}

#Preview {
    OrgPostsSection(org: Organization.dummy)
}
