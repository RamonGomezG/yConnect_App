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
    @State var Org_Calf: Float
    @State var isFavorite: Bool = false
    
    var body: some View {
        ZStack{
            Color("BackColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 10){
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
                
                Text("\(Org_Name)")
                    .multilineTextAlignment(.leading)
                    .frame(width: 300)
                    .font(.system(size: 20))
                    .padding(.top, 5)
                    .foregroundStyle(Color("TitleColor"))
            
                Text("\(Org_Des)")
                    .font(.system(size: 10))
                    .padding(.top, 2)
                    .foregroundStyle(.black)
                
                HStack{
                    Text(String(format: "%.1f", Org_Calf))
                        .font(.system(size: 20))
                        .foregroundStyle(Color("TitleColor"))
                    ForEach(0..<5, id: \.self){ index in
                        Image(systemName: index < Int(Org_Calf) ? "star.fill" : "star")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(.yellow)
                    }
                    Spacer()
                    Button(action: {
                        isFavorite.toggle()}) {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .resizable()
                                .frame(width: 25, height: 23)
                                .foregroundStyle(isFavorite ? Color("BackColor") : Color("BackColor"))
                        }
                        .padding(.trailing, 20)
                }
                .padding(.horizontal, 15)
                .padding(.top, 2)
                HStack(spacing: 5){
                    CallButtonView(phoneNumber: "6562465495", icon: "phone.fill")
                    ShareButtonView(shareText: "Apps", icon: "arrowshape.turn.up.right.fill")
                    DirectionButtonView(address: "Av. Eugenio Garza Sada 2501 Sur, Tecnológico, 64849 Monterrey, N.L.", icon: "map.fill")
                }
                .padding(.horizontal, 18)
                .padding(.top, 10)
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
    OrgInfoView(Org_Name: "Arena", Org_Des: "Atención Integral del Autismo. Terapias especializadas y servicio de evaluación y diagnostico de Autismo y Asperger", Org_Calf: 3)
}
