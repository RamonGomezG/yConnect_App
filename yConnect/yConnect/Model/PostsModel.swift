//
//  PostsModel.swift
//  yConnect
//
//  Created by Alumno on 28/09/23.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

@Observable
class PostsModel {
    var posts = [Posts]()

    init () {
        
    }
    
    func fetchPostsWithTags(user: Users) {
        posts.removeAll()
        
        let url = "http://10.14.255.174:3000/posts/ig/getFromTag/" //revisar si no se tienen que cumplir tooodos los tags porque eso limitaria los resultados a solo los que tienen exactamente la misma combinacion
        
        AF.request(url, method: .get, parameters: user.Tags, encoding: URLEncoding.default).responseData {data in
            let json = try! JSON(data: data.data!)
            
            for p in json["data"] {
                let post = Posts(
                    User: p.1["User"].stringValue,
                    Caption: p.1["Caption"].stringValue,
                    Image: p.1["Image"].stringValue
                )
            }
        }
        
    }
}
