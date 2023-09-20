//
//  Loginview.swift
//  yConnect
//
//  Created by Alumno on 19/09/23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        ZStack {
            Image("fondoyconnect")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .blur(radius: 5)
            VStack {
                Image("yConnect")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300 ,height: 50)
                Text("¿En qué te podemos ayudar?...")
                    .foregroundColor(Color.white)
            
                    NavigationLink {
                        LogInView()
                    } label: {
                        HStack {
                            Text("Ingresar")
                                .foregroundColor(.principalDarker)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 7)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white))
                        
                    }
                
                
            }
                
        } .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    StartView()
}
