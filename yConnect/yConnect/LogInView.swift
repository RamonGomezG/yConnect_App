//
//  LogInView.swift
//  yConnect
//
//  Created by Alumno on 19/09/23.
//

import SwiftUI

struct LogInView: View {
    @State var phoneNumber: String = ""
    
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
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 20)
                HStack{
                    TextField("Ingresa tu Número teléfonico...", text: $phoneNumber)
                }
                .frame(width: 300)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 20)
                NavigationLink {
                   ConfirmCodeView()
                } label: {
                    HStack {
                        Text("Ingresar")
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 7)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.principalDarker))
                        
                }
                
            }
            .padding(.vertical, 50)
            .padding(.horizontal, 30)
            .background(.colorPrincipal)
            .cornerRadius(10)
            
                
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LogInView()
}
