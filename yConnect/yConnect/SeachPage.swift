//
//  SeachPage.swift
//  yConnect
//
//  Created by Alumno on 02/10/23.
//

import SwiftUI

struct SeachPage: View {
    
    var organizationModel = OrganizationModel()
    
    var body: some View {
        VStack(spacing: 0){
            SearchView()
                .background(Color("BackColor"))
            ScrollView{
                ForEach(organizationModel.organizations, id: \.id) { org in
                    OrgInfoView(
                        Org_Name: org.Name,
                        Org_Des: org.Description,
                        Org_Tags: org.Tags)
                    .padding(.bottom, 10)
                }
            }
        }
        .background(Color("BackColor"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SeachPage()
}
