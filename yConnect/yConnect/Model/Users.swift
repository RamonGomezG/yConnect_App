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
    //var Email: String
    var AboutMe: String //Description
    var UserTags: Tags
    var Favourites: [String]
    //var Password: string
    
    init(Telephone: String) {
        self.id = Telephone
        self.Telephone = Telephone
        self.Name = "empty"
        self.AboutMe = "empty"
        self.UserTags = Tags(Tags: ["empty"])
        self.Favourites = ["empty"]
    }
}

extension Users {
    static var userDummy = Users(
        //Name: "User Dummy",
        Telephone: "81 28382828"
        //Description: "Soy un usuario creado para probar la aplicación",
        //UserTags: Tags(Tags: ["Autismo", "Niños", "Terapia"]),
        //Favourites: ["Arena", "yCo"]
    )
}
