//
//  ExploreView.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI
import SwiftData

struct ExploreView: View {
    //@State var user: Users
    /*var user = Users(
        id: "123",
        Name: "yConnection",
        Telephone: "866172672",
        Email: "yconnection@gmail.com",
        DescriptionA: "Aplicacion movil de conecxión con OSCs",
        Tags: ["Autismo", "Terapia"],
        Favorites: ["Uno", "Dos"],
        Password: "contraseña123"
    )*/
    
    @State private var isActive = false
    @Query var users: [Users]
    //var tagModel: TagModel
    var tags: [Tag]
    
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
                    
                    VStack{
                        NavigationLink {
                            PostsView()
                        } label: {
                            SectionView(title: "Publicaciones", imageName: "imagen1").foregroundColor(.principalDarker)
                        }
                        
                        NavigationLink {
                            VideosView()
                        } label: {
                            SectionView(title: "Videos", imageName: "imagen2").foregroundColor(.principalDarker)
                        }
                    }
                    
                }
            }
        }
        .onAppear(
            perform: {
                pullTags(tags: tags)
            }
        )
        .navigationBarBackButtonHidden(true)
    }
    
    func pullTags(tags: [Tag]) {
        for tag in tags {
            users.first?.Tags.append(tag.name)
        }
    }
}

#Preview {
    ExploreView(tags: [Tag(name: "Social"),Tag(name: "Mujeres")])
}
