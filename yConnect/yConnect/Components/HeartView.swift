//
//  HeartView.swift
//  yConnect
//
//  Created by Alumno on 17/10/23.
//

import SwiftUI

struct HeartView: View {
    
    var userModel = UserModel()
    var organization: Organization
    @State var isFavorite: Bool = false
    
    var body: some View {
        VStack{
            if isFavorite {
                Button {
                    userModel.person.Favorites = userModel.person.Favorites.filter { $0 != organization.id}
                    // actualiza user
                    print("Quitar")
                } label: {
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .foregroundStyle(Color.red)
                }
            } else {
                Button {
                    userModel.person.Favorites.append(organization.id)
                    // atualiza user
                } label: {
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundStyle(Color.red)
                }
            }
        }
        .onAppear {
            print(organization.id)
            print(userModel.person.Favorites)
            isFavorite = userModel.person.Favorites.contains(organization.id)
        }
    }
}
    
#Preview {
    HeartView(organization: Organization(id: "652dba6aeb3291db16e6a078", Name: "Hola", Location: "Avenida", Description: "Hola", Tags: ["Hola"], Igtag: "ashdiask", Telephone: "213213", Email: "saklndlkas"))
}
