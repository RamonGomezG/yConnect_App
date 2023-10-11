//
//  SeachPage.swift
//  yConnect
//
//  Created by Alumno on 02/10/23.
//

import SwiftUI

struct SearchPage: View {
    
    var organizationModel = OrganizationModel()
    
    var body: some View {
        VStack(spacing: 0){
            SearchView()
                .background(Color("BackColor"))
            if organizationModel.organizations.count > 0 {
                ScrollView{
                    ForEach(organizationModel.organizations, id: \.id) { org in
                        NavigationLink {
                            OrgProfileView(organization: Organization.dummy)
                        } label: {
                            OrgInfoView(Org_Name: org.Name, Org_Des: org.Description, Org_Calf: 0.0)
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
            organizationModel.fetchAllOrganizations()
        }
    }
}

#Preview {
    SearchPage()
}
