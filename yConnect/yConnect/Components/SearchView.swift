//
//  SearchView.swift
//  AppFinal
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String = ""
    @State private var isActive = false
    
    var body: some View {
            HStack{
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField(
                        "En qué te podemos ayudar?...",
                        text: $searchText,
                        onCommit: {onSearch(searchText: searchText)})
                    Spacer()
                        .foregroundColor(.blue)
                        .overlay(
                            Image(systemName: "xmark.circle.fill")
                                .padding()
                                .offset(x: 10)
                                .foregroundColor(.red)
                                .opacity(searchText.isEmpty ? 0.0 : 1.0)
                                .onTapGesture {
                                    searchText = ""
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
        NavigationLink(destination: SearchPage(searchTags: searchEngine(texto: searchText)), isActive: $isActive) {
                                EmptyView()
                            }
                
    }
    
    func searchEngine(texto: String) -> [String]{
        var textoLow = texto.lowercased()
        let tags = textoLow.components(separatedBy: " ")
        return tags
        
    }
    
    /*func searchBy(texto: String) -> String {
        let org = OrganizationModel()
        
        let grupoDeSubstrings = org.fetchAllOrganizationsNames()

        if grupoDeSubstrings.contains(where: texto.contains) {
            return "name"
        }
        else {
            return "tags"
        }
    }*/
    
    func onSearch(searchText: String) {
        isActive = true
    }
}

#Preview {
    SearchView()
}
