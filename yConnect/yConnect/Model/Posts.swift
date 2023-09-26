//
//  Posts.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import Foundation

struct Posts {
    
    var User: String
    var Caption: String
    var Image: String

}

extension Posts {
    static var dummyPost = Posts(
        User: "ycomx",
        Caption: "Agradecemos a las organizaciones que asistieron al festejo por las fiestas patrias hoy en las instalaciones de #yCo y por su participación en la actividad Desacartonando el Corazón de la mano de Patricia Contreras de Arte Sustentable A.C.",
        Image: "https://scontent-qro1-1.xx.fbcdn.net/v/t39.30808-6/379414828_370406048647065_5900128128262878857_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=5614bc&_nc_ohc=To6h-Q0KhkkAX9yg9WB&_nc_ht=scontent-qro1-1.xx&oh=00_AfAL7sBa1pBwY6VDOz312Ohc9buPm0525tqrQeS25XRGSA&oe=6516590C")
}
