//
//  PostsView.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct PostsView: View {
    var postsModel = PostsModel()
    
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
                ForEach(postsModel.posts) { post in
                    PostItemView(post: post)
                }
                
            }
            
        }
        .navigationBarBackButtonHidden(false)
        .onAppear{
            postsModel.fetchPostsWithOrgaizationIGURL(url: "", orgName: "prueba")
        }
    }
}



#Preview {
    PostsView()
}

/**
 post: Posts(User: "ycomx",
           Caption: "Agradecemos a las organizaciones que asistieron al festejo por las fiestas patrias hoy en las instalaciones de #yCo y por su participación en la actividad Desacartonando el Corazón de la mano de Patricia Contreras de Arte Sustentable A.C.",
           Image: "https://scontent-qro1-1.xx.fbcdn.net/v/t39.30808-6/379414828_370406048647065_5900128128262878857_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=5614bc&_nc_eui2=AeHRlggEaKf6yR5NJjPkEzDIWzahfzTwiltbNqF_NPCKW3g8vlWybF5-NzipF_s9e8ywoCELZu8x2LpNFuduGZZ-&_nc_ohc=To6h-Q0KhkkAX_HIoKO&_nc_ht=scontent-qro1-1.xx&oh=00_AfDeDsKgOjU0J-YbybQvvoeqc3fc9hPdKlr06z_Dt8Cl2g&oe=6518534C")
 */
