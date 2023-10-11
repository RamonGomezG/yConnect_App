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
        let userTags = user.Tags
        
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
                
            }
        
        //}
            
        }
        
    }
    
    func fetchPostsWithOrgaizationIGURL (url: String) {
        posts.removeAll()
        let user = "dummy"
        let urlTest = "https://feeds.behold.so/lmZc1NaZcbdrO2InKahF"
        
        AF.request(urlTest).response { data in
            //debugPrint(data)
            
            let json = try! JSON(data: data.data!)
            
            //debugPrint(json)
            for p in json {
                //Agregar verificacion para que omita videos y reels
                //agregar atributo postURL
                let post = Posts(
                    id: p.1["mediaUrl"].stringValue,
                    User: user,
                    Caption: p.1["caption"].stringValue,
                    Image: p.1["mediaUrl"].stringValue
                )
                //debugPrint(p)
                //debugPrint("-------------------")
                self.posts.append(post)
                
            }
            
        }
        
    }
}
