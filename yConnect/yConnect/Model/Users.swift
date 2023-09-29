//
//  Users.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import Foundation

struct Users {
    var Name: String
    var Telephone: String
    //var Email: String
    var Description: String
    var Tags: [String]
    var Favorites: [String]
    //var Password: string
}

extension Users {
    static var userDummy = Users(
        Name: "User Dummy",
        Telephone: "81 28382828",
        Description: "Soy un usuario creado para probar la aplicación",
        Tags: ["Autismo", "Niños", "Terapia"],
        Favorites: []
    )
}
