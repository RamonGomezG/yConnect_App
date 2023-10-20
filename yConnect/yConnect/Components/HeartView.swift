//
//  HeartView.swift
//  Persons-MongoDB
//
//  Created by David Cantú Delgado on 17/10/23.
//

import SwiftUI
import SwiftData

struct HeartView: View {
    
    var userModel = UserModel()
    var organizationsModel: Organization
    @State var isFavorite: Bool = false
    
    var body: some View {
        VStack {
            if isFavorite {
                Button {
                    userModel.person.Favorites = userModel.person.Favorites.filter { $0 != organizationsModel.id}
                    // actualiza user
                    print("Quitar")
                } label: {
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundStyle(Color("BackColor"))
                }
            } else {
                Button {
                    userModel.person.Favorites.append(organizationsModel.id)
                    // atualiza user
                } label: {
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .foregroundStyle(Color("BackColor"))
                }
            }
        }
        .onAppear {
            print(organizationsModel.id)
            print("Favoritos")
            print(userModel.person.Favorites)
            isFavorite = userModel.person.Favorites.contains(organizationsModel.id)
        }
    }
}


#Preview {
    HeartView(organizationsModel: Organization(id: "652dba6aeb3291db16e6a078", Name: "qwjklj", Location: "klasdjlkasd", Description: "jkasdhkja", Tags: ["jdnhjkash"], Igtag: "ansjdkas", Telephone: "71291238", Email: "jslkdjas"))
}
