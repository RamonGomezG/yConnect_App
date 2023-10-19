//
//  TaskSearchBarComponent.swift
//  yConnect
//
//  Created by Alumno on 02/10/23.
//

import SwiftUI
import SwiftData

struct TaskSearchBarComponent: View {
    @StateObject var viewModel: TagModel
    @Query var users: [Users]
    
    var body: some View {
            HStack{
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Buscar etiquetas...", text: $viewModel.tagText, onCommit: {
                        users.first!.Tags.append(viewModel.tagText.lowercased())
                        viewModel.addTag()
                    })
                    Spacer()
                        .foregroundColor(.blue)
                        .overlay(
                            Image(systemName: "xmark.circle.fill")
                                .padding()
                                .offset(x: 10)
                                .foregroundColor(.red)
                                .opacity(viewModel.tagText.isEmpty ? 0.0 : 1.0)
                                .onTapGesture {
                                    viewModel.tagText = ""
                                },
                            alignment: .trailing
                        )
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .shadow(color: .blue.opacity(0.15), radius: 10, x: 0, y: 0))
            }
            .font(.headline)
            .padding()
                
    }
}

#Preview {
    TaskSearchBarComponent(viewModel: TagModel())
}
