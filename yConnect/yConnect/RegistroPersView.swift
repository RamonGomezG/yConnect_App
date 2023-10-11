//
//  RegistroPersView.swift
//  yConnect
//
//  Created by Alumno on 29/09/23.
//

import SwiftUI

struct RegistroPersView: View {
    @State var name_person:String = ""
    @State var location_person: String = ""
    @State var description_person:String = ""
    
    var body: some View {
        ZStack{
            Color.principalDarker.ignoresSafeArea()
            VStack{
                Text("Datos de usuario")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
                HStack{
                    TextField("Nombre y apellido", text: $name_person)
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0,y:0))
                HStack{
                    TextField("Localidad", text: $location_person)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y:0))
                HStack{
                    TextField("Hablanos de ti...", text: $description_person)
                        .font(.title2)
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .shadow(color: .black.opacity(0.15),radius: 10, x:0, y:0))
                Spacer()
            }
            VStack{
                MyButton(title: "Actualizar", action: {})
                TagsButton(title: "Mis tags", action: {}, backgroundColor: .colorPrincipal)
                OrgsFavsButton(title: "Organizaciones favoritas", action: {}, backgroundColor: .colorPrincipal)
            }
            NavigationLink{
                RegistroOrgView()
            } label: {
                RegistroOrgsButton(title: "Registro de organizaciones", action: {}, backgroundColor: .colorPrincipal)
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

#Preview {
    RegistroPersView()
}
