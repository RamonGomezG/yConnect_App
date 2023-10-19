//
//  OrgInfoView.swift
//  AppFinal
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct OrgInfoViewFav: View {
    var organization : Organization
    @State var isFavorite = true
    var body: some View {
        ZStack{
            Color("BackColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 10){
                HStack(content: {
                    OrgInfoGalleryComponent(org: organization)
                        .padding(.leading, 25)
                })
                VStack {
                    Text("\(organization.Name)")
                        .font(.system(size: 20))
                        .padding(.top, 3)
                        .padding(.bottom, 5)
                        .foregroundStyle(Color("TitleColor"))
                    
                    Text("\(organization.Description)")
                        .font(.system(size: 10))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 15)
                HStack {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(organization.Tags, id: \.self) { tag in
                                DemoTag(title: tag)
                                    .font(.system(size: 14))
                                    .foregroundStyle(Color("TitleColor"))
                            }
                        }
                    }
                    .padding(.horizontal, 18)
                    .padding(.top, 5)
                    Button(action: {
                        isFavorite.toggle()}) {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .resizable()
                                .frame(width: 25, height: 23)
                                .foregroundStyle(isFavorite ? Color("BackColor") : Color("BackColor"))
                        }
                        .padding(.trailing, 20)
                        .padding(.horizontal, 10)
                        .padding(.top, 8)
                }
                HStack(spacing: 5){
                    CallButtonView(phoneNumber: "\(organization.Telephone)", icon: "phone.fill")
                    ShareButtonView(shareText: "Apps", icon: "arrowshape.turn.up.right.fill")
                    DirectionButtonView(address: "\(organization.Location)", icon: "map.fill")
                }
                .padding(.horizontal, 18)
                .padding(.top, 5)
                .padding(.bottom, 10)
            }
            //            .padding(.horizontal, 80)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white))
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    OrgInfoViewFav(organization: Organization.dummy )
}
