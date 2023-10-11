//
//  OrgProfileView.swift
//  yConnect
//
//  Created by Alumno on 11/10/23.
//

import SwiftUI

struct OrgProfileView: View {
    @State var organization  : Organization
    
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
                            PostsView()
                        } label: {
                            SectionView(title: "Publicaciones", imageName: "imagen1").foregroundColor(.principalDarker)
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
        }.navigationBarBackButtonHidden(false)
        
    }
}

#Preview {
    OrgProfileView(organization: Organization.dummy)
}
