//
//  OrganizationModel.swift
//  yConnect
//
//  Created by Alumno on 25/09/23.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

@Observable
class OrganizationModel {
    
    var organizations = [Organization]()
    var post = [Posts]()
    
    init () {
        
    }
    
    func fetchOrganizationsByTag(tags: [String]) {
        organizations.removeAll()
        let url = "http://10.14.255.175:3000/organizations/searchByTag"
        
        let parameters: [String: Any] = [
            "tags": tags,
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).response {data in
                //debugPrint(data)
                let json = try! JSON(data: data.data!)
                debugPrint(json)
                
                for o in json["Organizations"] {
                    let org = Organization(
                        id: o.1["ID"].stringValue,
                        Name: o.1["Name"].stringValue,
                        Location: o.1["Location"].stringValue,
                        Description: o.1["Description"].stringValue,
                        Tags: o.1["Tags"].arrayValue.compactMap { $0.stringValue },
                        Igtag: o.1["IgUrl"].stringValue,
                        Telephone: o.1["Telephone"].stringValue,
                        Email: o.1["Email"].stringValue             
                    )
                    self.organizations.append(org)
                    
                }
                
            }
    }
    
    func fetchOrganizationsByName(name: String) {
        organizations.removeAll()
        let url = "http://10.14.255.175:3000/organizations/searchByName"
        
        let parameters: [String: Any] = [
            "Name": name,
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).response {data in
                //debugPrint(data)
                let json = try! JSON(data: data.data!)
                debugPrint(json)
                
                for o in json["organizations"] {
                    let org = Organization(
                        id: o.1["ID"].stringValue,
                        Name: o.1["Name"].stringValue,
                        Location: o.1["Location"].stringValue,
                        Description: o.1["Description"].stringValue,
                        Tags: o.1["Tags"].arrayValue.compactMap { $0.stringValue },
                        Igtag: o.1["IgUrl"].stringValue,
                        Telephone: o.1["Telephone"].stringValue,
                        Email: o.1["Email"].stringValue
                        
                    )
                    self.organizations.append(org)
                    
                }
                
            }
    }
    
    func fetchAllOrganizations() {
        organizations.removeAll()
        
        let url = "http://10.14.255.175:3000/organizations" //revisar si no se tienen que cumplir tooodos los tags porque eso limitaria los resultados a solo los que tienen exactamente la misma combinacion
        
        AF.request(url).response {data in
            //debugPrint(data)
            let json = try! JSON(data: data.data!)
            //debugPrint(json)
            
            for o in json["data"] {
                let org = Organization(
                    id: o.1["ID"].stringValue,
                    Name: o.1["Name"].stringValue,
                    Location: o.1["Location"].stringValue,
                    Description: o.1["Description"].stringValue,
                    Tags: o.1["Tags"].arrayValue.compactMap { $0.stringValue },
                    Igtag: o.1["IgUrl"].stringValue,
                    Telephone: o.1["Telephone"].stringValue,
                    Email: o.1["Email"].stringValue
                    
                )
                self.organizations.append(org)
                
            }
        
        //}
            
        }
        
    }
    
    func fetchAllOrganizationsNames() -> [String] {
        var names:[String] = []
        
        let url = "http://10.14.255.175:3000/organizations" //revisar si no se tienen que cumplir tooodos los tags porque eso limitaria los resultados a solo los que tienen exactamente la misma combinacion
        
        AF.request(url).response {data in
            //debugPrint(data)
            let json = try! JSON(data: data.data!)
            //debugPrint(json)
            
            for o in json["data"] {
                let n = o.1["Name"].stringValue
                names.append(n)
                debugPrint(n)
            }
        
        //}
            
        }
        
        return names
        
    }

    
}

