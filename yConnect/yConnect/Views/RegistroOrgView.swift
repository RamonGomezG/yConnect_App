//
//  RegistroOrgView.swift
//  yConnect
//
//  Created by Alumno on 19/09/23.
//

import SwiftUI

struct RegistroOrgView: View {
    @State var orgname_OSC: String = ""
    @State var location_OSC: String = ""
    @State var description_OSC: String = ""
    @State var tags_OSC: String = ""
    @State var socialmedia_OSC: String = ""
    @State var phonenumber_OSC: String = ""
    @State var mail_OSC: String = ""
    @State var media_OSC: String = ""
    
    var body: some View {
        ZStack{
            Color.colorPrincipal.ignoresSafeArea()
            VStack{
                Text("Registro de organizaciones")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
                HStack{
                    TextField("Nombre de la OSC", text: $orgname_OSC)
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y: 0))
                HStack{
                    TextField("Ubicación", text: $location_OSC)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y: 0))
                HStack{
                    TextField("Descripción", text: $description_OSC)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y: 0))
                HStack{
                    TextField("Redes sociales", text: $socialmedia_OSC)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y: 0))
                HStack{
                    TextField("Número de telefono", text: $phonenumber_OSC)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y: 0))
                HStack{
                    TextField("Correo electrónico", text: $mail_OSC)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y: 0))
                HStack{
                    TextField("Redes sociales", text: $mail_OSC)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y: 0))
            Spacer()
            }
            .padding()
            Spacer()
            //RegistroOrgsButton(title: "Enviar registro", action: {})
                //.frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    RegistroOrgView()
}
