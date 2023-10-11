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
                    //Text("Hola \(user.Telephone)")
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
        }.navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    ExploreView(
        //user: Users.userDummy
    )
}
