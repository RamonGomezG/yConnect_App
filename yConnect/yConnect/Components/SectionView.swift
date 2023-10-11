//
//  SectionView.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI

struct SectionView: View {
    var title: String
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350, height: 280)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                VStack{
                    Spacer()
                    HStack {
                        Text("\(title)")
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    .padding(.leading, 10)
                }
            )
            .shadow(radius: 2)
            .padding(5)
    }
}

#Preview {
    SectionView(title: "Dummy", imageName: "imagen4")
}
