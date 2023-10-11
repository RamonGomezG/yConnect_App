//
//  FavsPage.swift
//  yConnect
//
//  Created by Alumno on 09/10/23.
//

import SwiftUI

struct FavsPage: View {
    
    var usermodel = UserModel()
    
    var body: some View {
        VStack(spacing: 0){
            SearchView()
                .background(Color("BackColor"))
            if usermodel.users.count > 0 {
                ScrollView{
                    ForEach(usermodel.users, id: \.id) { user in
                        OrgInfoView(
                            Org_Name: user.Name,
                            Org_Des: user.Description,
                            Org_Tags: user.Tags)
                        .padding(.bottom, 3)
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
            usermodel.fetchFavorites()
        }
    }
}

#Preview {
    SearchPage()
}
