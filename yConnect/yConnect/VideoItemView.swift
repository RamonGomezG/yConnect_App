//
//  PostItemView.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct VideoItemView: View {
    var title: String
    var ytUser: String
    var videoLink: String
    var postDate: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoView(videoLink: "https://www.youtube.com/embed/Px0vCTfdJ4o?si=exxqj4EAW0r5yCVb", videoTitle: "yCo Centro de Fortalecimiento 2021")
            //Username de la organizacion
            HStack{
                Text("\(ytUser)")
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
                Text("\(videoTitle)")
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
    VideoItemView(title: "Dummy", ytUser: "Consejo Civico", videoLink: "imagen1", postDate:  "25 de Septiembre 2023", videoTitle: "lorem ipsum asoi qwo")
}
