//
//  TagsBarComponent.swift
//  yConnect
//
//  Created by Alumno on 13/10/23.
//

import SwiftUI

struct TagsBarComponent: View {
    var organization : Organization
    @State var isFavorite: Bool = false
    
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(organization.Tags, id: \.self) { tag in
                        DemoTag(title: tag)
                            .font(.system(size: 14))
                            .foregroundStyle(Color("TitleColor"))
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 50))
            .padding(.horizontal, 18)
            .padding(.top, 5)
            Button(action: {
                isFavorite.toggle()}) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .frame(width: 25, height: 23)
                        .foregroundStyle(isFavorite ? Color("BackColor") : Color("BackColor"))
                }
                .padding(.trailing, 20)
                .padding(.horizontal, 10)
                .padding(.top, 8)
        }
    }
}

#Preview {
    TagsBarComponent(organization: Organization.dummy)
}
