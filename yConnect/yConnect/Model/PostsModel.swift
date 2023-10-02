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
        let userTags = user.UserTags
        
        let url = "http://10.14.255.174:3000/posts/ig/getFromTag" //revisar si no se tienen que cumplir tooodos los tags porque eso limitaria los resultados a solo los que tienen exactamente la misma combinacion
        
        AF.request(url,
                   method: .post,
                   parameters: userTags,
                   encoder: JSONParameterEncoder.default).response {data in
            //debugPrint(data)
            let json = try! JSON(data: data.data!)
            //debugPrint(json)
            
            for p in json["data"] {
                let post = Posts(
                    id: p.1["Image"].stringValue,
                    User: p.1["User"].stringValue,
                    Caption: p.1["Caption"].stringValue,
                    Image: p.1["Image"].stringValue
                )
                self.posts.append(post)
                print(post.Image)
            }
        
        //}
            
        }
        
    }
}
