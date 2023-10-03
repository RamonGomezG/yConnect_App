//
//  OrgInfoView.swift
//  AppFinal
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct OrgInfoView: View {
    
    @State var Org_Name: String
    @State var Org_Des: String
    @State var Org_Tags: [String]
    @State var isFavorite: Bool = false
    
    var body: some View {
        ZStack{
            Color("BackColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 10){
                HStack(spacing: 10){
                    Spacer()
                    Image("Image1")
                        .resizable()
                        .frame(width: 100, height: 70)
                        .cornerRadius(10)
                        .padding(.top, 15)
                    Image("Image2")
                        .resizable()
                        .frame(width: 100, height: 70)
                        .cornerRadius(10)
                        .padding(.top, 15)
                    Image("Image3")
                        .resizable()
                        .frame(width: 100, height: 70)
                        .cornerRadius(10)
                        .padding(.top, 15)
                    Spacer()
                }
                VStack {
                    Text("\(Org_Name)")
                        .font(.system(size: 20))
                        .padding(.top, 3)
                        .padding(.bottom, 5)
                        .foregroundStyle(Color("TitleColor"))
                    
                    Text("\(Org_Des)")
                        .font(.system(size: 10))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 15)
                HStack {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(Org_Tags, id: \.self) { tag in
                                DemoTag(title: tag)
                                    .font(.system(size: 14))
                                    .foregroundStyle(Color("TitleColor"))
                            }
                        }
                    }
                    .padding(.horizontal, 14)
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
                    CallButtonView(phoneNumber: "6562465495", icon: "phone.fill")
                    ShareButtonView(shareText: "Apps", icon: "arrowshape.turn.up.right.fill")
                    DirectionButtonView(address: "Av. Eugenio Garza Sada Sur 2788, Alta Vista, 64840 Monterrey, N.L", icon: "map.fill")
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
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    OrgInfoView(Org_Name: "Arena (Atención Integral del Autismo)", Org_Des: "Atención Integral del Autismo. Terapias especializadas y servicio de evaluación y diagnostico de Autismo y Asperger", Org_Tags: ["Autismo", "Terapias", "Evaluación", "Detección Temprana"])
}
