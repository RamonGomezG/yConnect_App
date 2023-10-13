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
            Link(destination: URL(string: post.postLink)!) {
                ImageView(url: post.Image)
            }
            //Username de la organizacion
            HStack{
                Text("\(post.User)")
                    .font(.title2)
                    .foregroundStyle(Color.principalDarker)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 9)
            
            //Fecha de publicación
            HStack{
                Text("\(post.timeStamp)")
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 9)
            
            //Descripción del post
            HStack{
                Text("\(post.Caption)")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 9)
            
        }
        .frame(width: 350)
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .background(Color.white.opacity(0.7))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .tint(Color.black)
    }
}

#Preview {
    PostItemView(post: Posts.dummyPost)
}
