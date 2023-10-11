//
//  ConfirmCodeView.swift
//  yConnect
//
//  Created by Alumno on 19/09/23.
//

import SwiftUI
import SwiftData

struct ConfirmCodeView: View {
    @Environment(\.modelContext) private var context
    
    @State var confirmCode: String = ""
    @State var phoneNumber: String
    @State var isLogged: Bool = false
    
    @Query private var user: [Users]
    
    var body: some View {
        if !isLogged {
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
                    Button(action: {
                        //verificar codigo
                        //registrar usuario localmente
                        setUser(userPhoneNumber: phoneNumber)
                        isLogged.toggle()
                    }, label: {
                        HStack {
                            Text("Confirmar")
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 7)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.principalDarker))
                    })
                }
                .padding(.vertical, 50)
                .padding(.horizontal, 30)
                .background(.colorPrincipal)
                .cornerRadius(10)
            }.navigationBarBackButtonHidden(true)
        } else {
            TagSelectView(user: user[0])
        }
    }
        
    func setUser(userPhoneNumber: String) {
        let user = Users(id: "", Name: "", Telephone: phoneNumber, Email: "", DescriptionA: "", Tags: [""], Favorites: [""], Password: "")
        context.insert(user)
    }
    
            
                
    }

#Preview {
    ConfirmCodeView(phoneNumber: "866 182 1244")
}
