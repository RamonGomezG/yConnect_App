//
//  OrgProfileView.swift
//  yConnect
//
//  Created by Alumno on 11/10/23.
//

import SwiftUI

struct OrgProfileView: View {
    @State var organization  : Organization
    var postsModel = PostsModel()
    var images: [String] = []
    
    var body: some View {
        ZStack{
            Color.colorPrincipal.ignoresSafeArea()
            ScrollView {
                LogoView()
                    .padding(.bottom, 20)
                VStack{
                    
                    Text("\(organization.Name)")
                        .font(.title2)
                        .foregroundStyle(Color.principalDarker)
                    VStack{
                        NavigationLink {
                            OrganizationPostsView(organization: organization)
                        } label: {
                            //SectionView(title: "Publicaciones", imageName: "imagen1").foregroundColor(.principalDarker)
                            HStack {
                                //ScrollView(.horizontal, showsIndicators: false) {
                                    ForEach (postsModel.posts) { post in
                                        postOrgSection(url: post.Image)
                                    }
                                //}//.frame(width: 300, height: 300)
                            }
                        }
                        
                        NavigationLink {
                            VideosView()
                        } label: {
                            SectionView(title: "Videos", imageName: "imagen2").foregroundColor(.principalDarker)
                        }
                    }
                    
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 7)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white))
            }
        }
        .navigationBarBackButtonHidden(false)
        .onAppear{
            postsModel.fetchPostsWithOrgaizationIGURL(url: organization.Igtag, orgName: organization.Name)
            debugPrint("fetching...")
            debugPrint(postsModel.posts)
        }
        
    }
}

#Preview {
    OrgProfileView(organization: Organization.dummy)
}
