//
//  PostsView.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI
import SwiftData

struct PostsView: View {
    
    //@State var organizationModel: OrganizationModel
    @State var organizationModel = OrganizationModel()
    @Query var users: [Users]
    @State var tags: [String] = []
    //var searchBy: String
    //var searchContent: [String]
    //var searchTags = ["social"]
    
    
    var body: some View {
        VStack(spacing: 0){
            
            SearchView()
                .background(Color("BackColor"))
            if organizationModel.organizations.count > 0 {
                ScrollView{
                    ForEach(organizationModel.organizations, id: \.id) { org in
                        NavigationLink{
                            OrgProfileView(organization: org)
                        } label: {
                            JustPostsComponent(organization: org)
                        }
                    }
                }
            } else {
                Text("loading")
            }
             
        }
        .padding(.top, 50)
        .background(Color("BackColor"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onAppear {
            tags = users.first!.Tags
            debugPrint(tags)
            organizationModel.fetchOrganizationsByTag(tags: tags)
        }
    }
}

#Preview {
    PostsView()
}

