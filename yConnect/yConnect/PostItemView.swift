//
//  PostItemView.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct PostItemView: View {
    
    @State var post: Posts
    
    /*
    var User: String
    var Image: String
    var postDate: String
    var Caption: String
     */
    
    var body: some View {
        VStack {
            ImageView(url: post.Image)
                
            //Username de la organizacion
            HStack{
                Text("\(post.User)")
                    .font(.title2)
                    .foregroundStyle(Color.principalDarker)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .frame( width: .infinity)
            .padding(.leading, 9)
            
            //Fecha de publicación
            HStack{
                Text("falta obtener dato")
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .frame( width: .infinity)
            .padding(.leading, 9)
            
            //Descripción del post
            HStack{
                Text("\(post.Caption)")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .frame( width: .infinity)
            .padding(.leading, 9)
            
        }
        .frame(width: 350)
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    PostItemView(post: Posts(
         id: "lajsdkajdlksjd",
         User: "ycomx",
         Caption: "Agradecemos a las organizaciones que asistieron al festejo por las fiestas patrias hoy en las instalaciones de #yCo y por su participación en la actividad Desacartonando el Corazón de la mano de Patricia Contreras de Arte Sustentable A.C.",
         Image: "https://scontent-qro1-1.xx.fbcdn.net/v/t39.30808-6/379414828_370406048647065_5900128128262878857_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=5614bc&_nc_eui2=AeHRlggEaKf6yR5NJjPkEzDIWzahfzTwiltbNqF_NPCKW3g8vlWybF5-NzipF_s9e8ywoCELZu8x2LpNFuduGZZ-&_nc_ohc=To6h-Q0KhkkAX_HIoKO&_nc_ht=scontent-qro1-1.xx&oh=00_AfDeDsKgOjU0J-YbybQvvoeqc3fc9hPdKlr06z_Dt8Cl2g&oe=6518534C"
    ))
}
