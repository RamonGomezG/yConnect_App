//
//  TagSelectView.swift
//  yConnect
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct TagSelectView: View {
        @StateObject var viewModel = TagModel()
        var user: Users
        
        var body: some View {
            ZStack {
                Color.colorPrincipal
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Spacer()
                            .frame(height: 150)
                        Image("yConnect")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300 ,height: 50)
                        Text("Escoge las etiquetas que se adecuen a la ayuda que buscas...")
                            .foregroundStyle(Color.white)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.top, 15)
                            .frame(width: 300)
                        TaskSearchBarComponent(viewModel: viewModel)
                        
                        VStack(alignment: .leading, spacing: 4){
                            ForEach(viewModel.rows, id:\.self){ rows in
                                HStack(spacing: 6){
                                    ForEach(rows){ row in
                                        Text(row.name)
                                            .foregroundStyle(.white)
                                            .font(.system(size: 16))
                                            .bold()
                                            .padding(.leading, 14)
                                            .padding(.trailing, 30)
                                            .padding(.vertical, 8)
                                            .background(
                                                ZStack(alignment: .trailing){
                                                    Capsule()
                                                        .fill(.principalDarker)
                                                    Button{
                                                        viewModel.removeTag(by: row.id)
                                                    } label:{
                                                        Image(systemName: "xmark")
                                                            .frame(width: 10, height: 10)
                                                            .padding(.trailing, 12)
                                                            .foregroundColor(.colorPrincipal)
                                                    }
                                                }
                                            )
                                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    }
                                }
                                .frame(height: 28)
                                .padding(.bottom, 10)
                            }
                        }
                        .padding(24)
                        NavigationLink {
                            ExploreView(user: user)
                        } label: {
                            ButtonComponent(title: "Continuar")
                        }
                        Spacer()
                    }
                }
            }.navigationBarBackButtonHidden(true)
        }
    }  


#Preview {
    TagSelectView(user: Users(Telephone: "123123"))
}
