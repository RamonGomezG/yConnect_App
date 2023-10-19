//
//  FavsPage.swift
//  yConnect
//
//  Created by Alumno on 09/10/23.
//

import SwiftUI

struct FavsPage: View {
    
    var organizationModel = OrganizationModel()
    var searchTags: [String]
    
    var body: some View {
        VStack(spacing: 0){
            SearchView()
                .background(Color("BackColor"))
            if organizationModel.organizations.count > 0 {
                ScrollView{
                    ForEach(organizationModel.organizations, id: \.id) { org in
                        NavigationLink {
                            OrgProfileView(organization: org)
                        }
                        label: {
                            OrgInfoViewFav(organization: org)
                        }
                    }
                    NavigationLink {
                        OrgProfileView(organization: Organization.dummy)
                    }
                    label: {
                        OrgInfoViewFav(organization: Organization.dummy)
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
            organizationModel.fetchOrganizationsByTag(tags: searchTags)//cambiar
        }
    }
}

#Preview {
    SearchPage(searchTags: ["mujeres"]) // cambiar
}
