//
//  OrganizationPostsView.swift
//  yConnect
//
//  Created by Alumno on 09/10/23.
//

import SwiftUI

struct OrganizationPostsView: View {
    var postsModel = PostsModel()
    @State var organization : Organization
    
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
            postsModel.fetchPostsWithOrgaizationIGURL(url: "")
            debugPrint("fetching...")
        }
    }
}

#Preview {
    OrganizationPostsView(organization: Organization.dummy)
}
