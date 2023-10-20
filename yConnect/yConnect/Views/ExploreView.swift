//
//  ExploreView.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI
import SwiftData

struct ExploreView: View {
    @Query var users: [Users]
    //var userModel: UserModel
    var tags: [Tag] = []
    
    var body: some View {
        ZStack{
            Color.colorPrincipal.ignoresSafeArea()
            ScrollView {
                LogoView()
                VStack{
                    HStack{
                        NavigationLink {
                            RegistroPersView()
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
                            let tags = users.first!.Tags
                            SearchPage(searchTags: tags)
                        } label: {
                            SectionView(title: "Sugerencias", imageName: "imagen2").foregroundColor(.principalDarker)
                        }
                    }
                    
                }
            }
        }.onAppear{
            //userModel.setUser(telephone: users.first!.Telephone)
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    func pullTags(tags: [Tag]) {
        users.first?.Tags.removeAll()
        for tag in tags {
            users.first?.Tags.append(tag.name.lowercased())
        }
    }
}

#Preview {
    ExploreView()
}
