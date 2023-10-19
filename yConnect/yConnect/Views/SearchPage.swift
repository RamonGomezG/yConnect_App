//
//  SeachPage.swift
//  yConnect
//
//  Created by Alumno on 02/10/23.
//

import SwiftUI

struct SearchPage: View {
    
    //@State var organizationModel: OrganizationModel
    @State var organizationModel = OrganizationModel()
    //var searchBy: String
    //var searchContent: [String]
    
    //var searchTags = ["social"]
    @State var searchTags : [String]
    
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
                            OrgInfoView(
                                organization: org)
                            .padding(.bottom, 3)
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
            //if (searchBy == "tags") {
                organizationModel.fetchOrganizationsByTag(tags: searchTags)
            //}
            //else if (searchBy == "name") {
                
            //}
        }
    }
}

#Preview {
    SearchPage(searchTags: ["social", "mujeres"])
}

