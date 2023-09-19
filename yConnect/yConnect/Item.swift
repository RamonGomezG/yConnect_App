//
//  Item.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
