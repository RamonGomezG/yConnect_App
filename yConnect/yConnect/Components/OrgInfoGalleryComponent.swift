//
//  OrgInfoGalleryComponent.swift
//  yConnect
//
//  Created by Alumno on 13/10/23.
//

import SwiftUI
import Kingfisher

struct OrgInfoGalleryComponent: View {
    @State var postsModel = PostsModel()
    var org: Organization
    let rows = [
            GridItem(.fixed(70)),
        ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 10) {
            ForEach(postsModel.posts) { item in
                // Contenido de cada celda de la cuadrícula
                KFImage(URL(string: item.Image))
                    .resizable()
                    //.padding(0)
                    .aspectRatio(contentMode: .fill)
                    .frame(width:100, height: 70) // Ajusta el tamaño de cada celda
                    .cornerRadius(10)
            }
        }
    }
        .clipShape(RoundedRectangle(cornerRadius: 10))
    .frame(width: 310, height: 70)
    .onAppear{
        postsModel.fetchPostsWithOrgaizationIGURL(url: org.Igtag, orgName: org.Name)
        debugPrint("fetching...")
        debugPrint(postsModel.posts)
    }
    }
}

#Preview {
    OrgInfoGalleryComponent(org: Organization.dummy)
}
