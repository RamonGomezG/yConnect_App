//
//  Organization.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import Foundation

struct Organization: Identifiable {
    
    var id: String
    var Name: String
    var Location: String
    var Description: String
    var Tags: [String]
    var Igtag: String
    var Telephone: String
    var Email: String
    
}

extension Organization {
    
    static var dummy = Organization(
        id:"pollolokooficial",
        Name: "yCo Foundation",
        Location: "Av. Del Estado 208, Tecnológico, 64700 Monterrey, N.L.",
        Description: "Somos una comunidad de innovación, que cuenta con espacio físico de encuentro, fortalecimiento y acción colectiva, para generar impacto social.",
        Tags: ["emprendimiento apoyo, social, consultaria"],
        Igtag: "https://feeds.behold.so/lmZc1NaZcbdrO2InKahF",
        Telephone: "8661735944",
        Email: "yconnection@gmail.com")
    
}
