//
//  postOrgSection.swift
//  yConnect
//
//  Created by Alumno on 12/10/23.
//


import SwiftUI
import Kingfisher

struct postOrgSection: View {
    var url: String
    @State var organization  : Organization
    
    var body: some View {
        KFImage(URL(string: "\(url)" ))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 90.0, height: 90.0)
    }
}

#Preview {
    postOrgSection(url: <#T##String#>, organization: <#T##Organization#>)
}
