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
    var person = Users.userDummy
    var exists: [Bool] = []
    var favoriteOrgs: [String] = []
    
    init () {
        
    }
    
    func loadFavs() {
        person.Favorites = ["6528721d6133faea91a99b47"]
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
    
    func veifyUser(telephone: String) { //return bool
        let url = "http://10.14.255.175:3000/users/Login"
        
        let parameters: [String: Any] = [
            "telephone": telephone,
            ]
        
        AF.request(url,method: .post, parameters: parameters, encoding: JSONEncoding.default).response { data in
            let json = try! JSON(data: data.data!)
            
            //for u in json["result"].arrayValue{
            let u = json["result"]
             
            debugPrint(u)
            
            let user = Users(
                id: u["ID"].stringValue,
                Name: u["Name"].stringValue,
                Telephone: u["Telephone"].stringValue,
                Email: u["Name"].stringValue,
                DescriptionA: u["Description"].stringValue,
                Tags: u["Tags"].arrayObject as? [String] ?? [],
                Favorites: u["Favorites"].arrayObject as? [String] ?? [],
                Password: u["Password"].stringValue)
            self.users.append(user)
            debugPrint(user)
            

            if json["result"]["Telephone"] != "" {
                self.exists.append(true)
            } else {
                self.exists.append(false)
            }
            
            
        }
        
    }
    
    func setUser(telephone: String){ //return bool
        let url = "http://10.14.255.175:3000/users/Login"
        
        let parameters: [String: Any] = [
            "telephone": telephone,
            ]
        
        AF.request(url,method: .post, parameters: parameters, encoding: JSONEncoding.default).response { data in
            let json = try! JSON(data: data.data!)
            debugPrint(json)
            
            for u in json["result"].arrayValue{
                let user = Users(
                    id: u["ID"].stringValue,
                    Name: u["Name"].stringValue,
                    Telephone: u["Telephone"].stringValue,
                    Email: u["Name"].stringValue,
                    DescriptionA: u["Description"].stringValue,
                    Tags: u["Tags"].arrayObject as? [String] ?? [],
                    Favorites: u["Favorites"].arrayObject as? [String] ?? [],
                    Password: u["Password"].stringValue)
                self.users.append(user)
            }
        }
    }
    
    func updatePersDatos(ID: String, Name: String, Telephone: String, Description: String, Tags: [String], Favorites: [String]){
        users.removeAll()
        
        let url = "http://10.14.255.175:3000/users/Update"
        
        let parameters: [String: Any] = [
            "id": ID,
            "name": Name,
            "telephone" : Telephone,
            "description": Description,
            "tags": Tags,
            "Favorites": Favorites]
        
        AF.request(url,method: .post, parameters: parameters, encoding: JSONEncoding.default).response { [self] data in
            let json = try! JSON(data: data.data!)
            debugPrint(json)
            
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
                self.users.append(user)
            }
        }
    }
}
