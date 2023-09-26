//
//  PostItemView.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct PostItemView: View {
    var title: String
    var igUser: String
    var imageName: String
    var postDate: String
    var postCaption: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 330, height: 330)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            //Username de la organizacion
            HStack{
                Text("\(igUser)")
                    .font(.title2)
                    .foregroundStyle(Color.principalDarker)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .frame( width: .infinity)
            .padding(.leading, 9)
            
            //Fecha de publicación
            HStack{
                Text("\(postDate)")
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .frame( width: .infinity)
            .padding(.leading, 9)
            
            //Descripción del post
            HStack{
                Text("\(postCaption)")
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
    PostItemView(title: "Dummy", igUser: "@arena_atencion", imageName: "imagen1", postDate:  "25 de Septiembre 2023", postCaption: "lorem ipsum asoi qwoijd hgue use asjoi asimpole plan od becaus ethie sol eun una vez una organización que publico un post")
}
