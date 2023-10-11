//
//  UserModel.swift
//  yConnect
//
//  Created by Alumno on 09/10/23.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

@Observable
class UserModel {
    
    var users = [Users]()
    
    init () {
        
    }
    
    func fetchFavorites() {
        users.removeAll()
        
        let url = "http://10.14.255.175:3000/users"
        
        AF.request(url,method: .get).response { [self] data in
            let json = try! JSON(data: data.data!)
            
            for u in json["data"].arrayValue{
                let user = Users(
                    id: u["ID"].stringValue,
                    Name: u["Name"].stringValue,
                    Telephone: u["Telephone"].stringValue,
                    Email: u["Name"].stringValue, 
                    DescriptionA: u["Description"].stringValue,
                    Tags: u["Tags"].arrayObject as? [String] ?? [],
                    Favorites: u["Favorites"].arrayObject as? [String] ?? [],
                    Password: u["Password"].stringValue)
                users.append(user)
            }
        }
    }
}
