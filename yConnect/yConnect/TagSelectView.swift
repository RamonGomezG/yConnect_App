//
//  TagSelectView.swift
//  yConnect
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct TagSelectView: View {
   /* var tags = 
    
    var body: some View {
        ZStack{
            Color.colorPrincipal.ignoresSafeArea()
            ScrollView {
                VStack {
                    Spacer()
                        .frame(height: 200)
                    Image("yConnect")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300 ,height: 50)
                    HStack {
                        Text("Elige al menos 5 etiquetas que se ajusten a la ayuda que buscas...")
                            .foregroundStyle(Color.white)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding(.top, 15)
                    }
                        .frame(width: 300)
                    SearchView() //cambiar el placeholder
                    //Grid de etiquetas
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 5) {
                            ForEach(tags, id: \.self) { tag in
                                TagComponent(title: tag)
                            }
                        }
                        .frame(width: 350)
                    }
                    .padding(.bottom, 40)
                    NavigationLink {
                        ExploreView()
                    } label: {
                        ButtonComponent(title: "Continuar")
                    }
                    
                    
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
    */
        @StateObject var viewModel = TagModel()
        
        var body: some View {
            VStack{
                Text("Enter Tag Here:")
                    .padding()
                TaskSearchBarComponent(viewModel: viewModel)
                
                VStack(alignment: .leading, spacing: 4){
                    ForEach(viewModel.rows, id:\.self){ rows in
                        HStack(spacing: 6){
                            ForEach(rows){ row in
                                Text(row.name)
                                    .font(.system(size: 16))
                                    .padding(.leading, 14)
                                    .padding(.trailing, 30)
                                    .padding(.vertical, 8)
                                    .background(
                                        ZStack(alignment: .trailing){
                                            Capsule()
                                                .fill(.gray.opacity(0.3))
                                            Button{
                                                viewModel.removeTag(by: row.id)
                                            } label:{
                                                Image(systemName: "xmark")
                                                    .frame(width: 15, height: 15)
                                                    .padding(.trailing, 8)
                                                    .foregroundColor(.red)
                                            }
                                        }
                                    )
                            }
                        }
                        .frame(height: 28)
                        .padding(.bottom, 10)
                    }
                }
                .padding(24)
                
                Spacer()
            }
        }
    }


#Preview {
    TagSelectView()
}
