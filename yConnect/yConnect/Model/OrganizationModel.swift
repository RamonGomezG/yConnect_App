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
    
    init () {
        
    }
    
    func fetchOrganizations() {
        organizations.removeAll()
        
        let url = "http://10.14.255.174:3000/organizations"
        
        AF.request(url,method: .get).response { [self] data in
            let json = try! JSON(data: data.data!)
            
            for org in json["data"].arrayValue{
                let organization = Organization(
                    id: org["ID"].stringValue,
                    Name: org["Name"].stringValue,
                    Location: org["Location"].stringValue,
                    Description: org["Description"].stringValue,
                    Tags: org["Tags"].arrayObject as? [String] ?? [],
                    Igtag: org["Igtag"].stringValue,
                    Telephone: org["Name"].stringValue,
                    Email: org["Name"].stringValue)
                organizations.append(organization)
            }
        }
    }
}

