//
//  TagSelectView.swift
//  yConnect
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI
import SwiftData

struct TagSelectView: View {
        @Query var users: [Users]
        @StateObject var tagModel = TagModel()
                
        var body: some View {
            ZStack {
                Color.colorPrincipal
                    .ignoresSafeArea()
                    .onAppear{
                        tagModel.startTags(users: users)
                    }
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
                        TaskSearchBarComponent(viewModel: tagModel)
                    
                        VStack(alignment: .leading, spacing: 4){
                            ForEach(tagModel.rows, id:\.self){ rows in
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
                                                        tagModel.removeTag(by: row.id)
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
                            ExploreView(tags: tagModel.tags)
                        } label: {
                            ButtonComponent(title: "Continuar")
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }


#Preview {
    TagSelectView()
}
