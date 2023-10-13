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
                VStack{
                    Text("\(organization.Name)")
                        .font(.title2)
                        .foregroundStyle(Color.principalDarker)
                        .bold()
                        .padding(.bottom, -5)
                    
                    TagsBarComponent(organization: organization)
                    
                    VStack{
                        NavigationLink {
                            OrganizationPostsView(organization: organization)
                        } label: {
                            OrgPostsSection(org: organization).foregroundColor(.principalDarker)
                        }
                        
                        NavigationLink {
                            MapView(address: organization.Location)
                        } label: {
                            //SectionView(title: "Videos", imageName: "imagen2").foregroundColor(.principalDarker)
                            LocationMapView(address: organization.Location).foregroundColor(.principalDarker)
                        }
                    }
                    
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 7)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white.opacity(0.7)))
            }
            ToolBarComponent(organization: organization)
                .padding(.top, 730)
                .shadow(radius: 10)
        }
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    OrgProfileView(organization: Organization.dummy)
}
