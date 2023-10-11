//
//  Users.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import Foundation

struct Users {
    var id: String
    var Name: String
    var Telephone: String
    var Email: String
    var Description: String
    var Tags: [String]
    var Favorites: [String]
    var Password: String
}

extension Users {
    static var userDummy = Users(
        id:"6525fba14cd1e24f49c5905e",
        Name: "User Dummy",
        Telephone: "81 28382828",
        Email: "hasajslahdlkash", 
        Description: "Soy un usuario creado para probar la aplicación",
        Tags: ["Autismo", "Niños", "Terapia"],
        Favorites: [],
        Password: "sajhsjd"
    )
}
