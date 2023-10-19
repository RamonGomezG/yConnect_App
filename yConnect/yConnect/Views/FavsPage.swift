//
//  FavsPage.swift
//  yConnect
//
//  Created by Alumno on 09/10/23.
//

import SwiftUI

struct FavsPage: View {
    
    var organizationModel = OrganizationModel()
    var userModel = UserModel()
    
    var body: some View {
        VStack(spacing: 0){
            SearchView()
                .background(Color("BackColor"))
            if organizationModel.organizations.count > 0 {
                ScrollView{
                    ForEach(userModel.favoriteOrgs, id: \.self) { org in
                        if let favoriteOrg = organizationModel.organizations.first(where: { $0.id == org}){
                            OrgInfoView(organization: favoriteOrg)
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
            organizationModel.fetchOrganizationsByIDs(id: userModel.favoriteOrgs)
        }
    }
}

#Preview {
    FavsPage() // cambiar
}
