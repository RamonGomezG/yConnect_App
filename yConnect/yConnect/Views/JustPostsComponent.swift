//
//  JustPostsComponent.swift
//  yConnect
//
//  Created by Alumno on 16/10/23.
//

import SwiftUI

struct JustPostsComponent: View {
    var postsModel = PostsModel()
    @State var organization : Organization
    
    var body: some View {
        VStack {
            //Despliegue de 
            ForEach(postsModel.posts) { post in
                PostItemView(post: post)
            }
            
        }
        .onAppear{
            postsModel.fetchPostsWithOrgaizationIGURL(url: organization.Igtag, orgName: organization.Name)
            debugPrint("fetching...")
        }
    }
}

#Preview {
    JustPostsComponent(organization: Organization.dummy)
}
