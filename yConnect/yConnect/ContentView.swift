//
//  ContentView.swift
//  yConnect
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            StartView()
        }
        
    }
}

#Preview {
    ContentView()
}
