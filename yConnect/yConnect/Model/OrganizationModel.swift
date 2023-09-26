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
    
    func fetchOrganizations() {
        organizations.removeAll()
        
        let url = ""
    }

    
}

