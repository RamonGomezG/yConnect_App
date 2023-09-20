//
//  ExploreView.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI

struct ExploreView: View {
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
                    HStack{
                        SectionView(title: "Artículos", imageName: "imagen1")
                        SectionView(title: "Noticias", imageName: "imagen2")
                    }
                    HStack{
                        SectionView(title: "Sugerencias", imageName: "imagen4")
                        SectionView(title: "Eventos", imageName: "imagen6")
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    ExploreView()
}
