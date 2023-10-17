//
//  RegistroPersView.swift
//  yConnect
//
//  Created by Alumno on 16/10/23.
//

import SwiftUI

struct RegistroPersView: View {
    @State private var name_person = ""
    @State private var location_person = ""
    @State private var description_person = ""
    
    var body: some View {
        Rectangle()
            .fill(Color.colorPrincipal)
            .ignoresSafeArea()
            .overlay(
                VStack {
                    LogoView()
                        .padding(.top, 30)
                    Text("Datos de usuario")
                        .font(.title)
                        .foregroundStyle(Color("TitleColor"))
                        .padding(.bottom, 30)
                        .padding(.top, 30)
                    HStack{
                        TextField("Nombre y apellido", text: $name_person)
                            .foregroundStyle(Color("TitleColor"))
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Spacer()
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .shadow(color: .black.opacity(0.15), radius: 10, x:0, y:0))
                    HStack{
                        TextField("Hablanos de ti... ", text: $description_person)
                            .foregroundColor(.black)
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .center)
                        Spacer()
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .shadow(color: .black.opacity(0.15), radius: 10, x:0, y:0))
                    VStack {
                        MyButton(title: "Actualizar", action: {})
                        
                        NavigationLink(destination: TagSelectView()) {
                            Text("Tags")
                                .font(.title2)
                                .frame(width: 100, height: 60, alignment: .center)
                                .background(Color.principalDarker)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                        .padding()
                        
                        NavigationLink(destination: FavsPage()) {
                            Text("Organizaciones Favoritas")
                                .font(.title2)
                                .frame(width: 200, height: 60, alignment: .center)
                                .background(Color.principalDarker)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: RegistroOrgView()) {
                            Text("Registro organizaciones")
                                .font(.title2)
                                .frame(width: 300, height: 60, alignment: .center)
                                .background(Color.principalDarker)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                        .padding()
                        Spacer()
                        
                    }
                }
            )
    }
}

struct RegistroPersView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroPersView()
    }
}
