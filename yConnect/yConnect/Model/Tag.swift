//
//  Tag.swift
//  yConnect
//
//  Created by Alumno on 02/10/23.
//

import CoreFoundation
import UIKit
import Foundation
import SwiftData


struct Tag: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var size: CGFloat = 0
    
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.width
}

extension String{
    func getSize() -> CGFloat{
        let font = UIFont.systemFont(ofSize: 16)
        let attributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: attributes)
        return size.width
    }
}
