//
//  VideosView.swift
//  yConnect
//
//  Created by user248071 on 9/26/23.
//

import SwiftUI
import AVKit

struct VideosView: View {
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
                
                Text("Videos")
                    .font(.title)
                    .foregroundStyle(Color.principalDarker)
                    .padding(.top, 1)
                
                //Despliegue de videos
                VideoItemView(title: "Dummy", ytUser: "@arena_atencion", videoLink: "imagen1", postDate:  "25 de Septiembre 2023", videoTitle: "lorem ipsum asoi qwo")
                
            }
        }.navigationBarBackButtonHidden(false)
    }
}

#Preview {
    VideosView()
}
