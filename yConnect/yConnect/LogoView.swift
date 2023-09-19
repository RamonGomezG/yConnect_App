//
//  LogoView.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("yConnect")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150 ,height: 25)    }
}

#Preview {
    LogoView()
}
