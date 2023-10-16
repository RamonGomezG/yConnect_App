//
//  Users.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import Foundation
import SwiftData

@Model
final class Users {
    
    var id: String
    var Name: String
    var Telephone: String
    var Email: String
    var DescriptionA: String
    var Tags: [String]
    var Favorites: [String]
    var Password: String
    
    init(id: String, Name: String, Telephone: String, Email: String, DescriptionA: String, Tags: [String], Favorites: [String], Password: String ) {
        self.id = id
        self.Telephone = Telephone
        self.Name = Name
        self.Email = Email
        self.DescriptionA = DescriptionA
        self.Tags = Tags
        self.Favorites = Favorites
        self.Password = Password
        
    }
}

extension Users {
    static var userDummy = Users(
        id: "123",
        Name: "yConnection",
        Telephone: "866172672",
        Email: "yconnection@gmail.com",
        DescriptionA: "Aplicacion movil de conecxión con OSCs",
        Tags: ["Autismo", "Terapia"],
        Favorites: ["Uno", "Dos"],
        Password: "contraseña123"
    )
}
