//
//  ConfirmCodeView.swift
//  yConnect
//
//  Created by Alumno on 19/09/23.
//

import SwiftUI

struct ConfirmCodeView: View {
    @State var confirmCode: String = ""
    
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
                    TextField("Código de confirmación...", text: $confirmCode)
                }
                .frame(width: 300)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 20)
                NavigationLink {
                    //mandar a ingresar datos
                    ExploreView()
                } label: {
                    HStack {
                        Text("Confirmar")
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
    ConfirmCodeView()
}
