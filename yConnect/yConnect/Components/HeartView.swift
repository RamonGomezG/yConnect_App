//
//  HeartView.swift
//  yConnect
//
//  Created by Alumno on 17/10/23.
//

import SwiftUI

struct HeartView: View {
    
    var userModel: UserModel
    var organization: Organization
    @State var isFavorite: Bool

    var body: some View {
        VStack {
            Button(action: {
                isFavorite.toggle() // Cambia el estado de isFavorite cuando se hace clic

                if isFavorite {
                    userModel.person.Favorites.append(organization.id)
                } else {
                    userModel.person.Favorites = userModel.person.Favorites.filter { $0 != organization.id }
                }

            }) {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .font(.largeTitle)
                    .frame(width: 25, height: 23)
                    .foregroundStyle(Color("BackColor"))
            }
        }
        .onAppear {
            isFavorite = userModel.person.Favorites.contains(organization.id)
        }
    }
}

#Preview {
    HeartView(userModel: UserModel(), organization: Organization(id: "92301782173921", Name: "Arena", Location: "Avenida Euge", Description: "djs.jaskd", Tags: ["sjkjahdk"], Igtag: "jkdkjasd", Telephone: "1231231", Email: "ajsdkjjask"), isFavorite: false)
}
