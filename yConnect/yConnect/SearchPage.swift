//
//  SearchPage.swift
//  yConnect
//
//  Created by Alumno on 29/09/23.
//

import SwiftUI

struct SearchPage: View {
    
    @State var menu: Bool = false
    @State var organizations: [Organization] = []
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BackColor")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    SearchView()
                    VStack{
                        List(organizations) { org in
                            OrgInfoView(Org_Name: org.Name, Org_Des: org.Description, Org_Calf: Float(org.Rating))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SearchPage(organizations: [Organization(id: "ksdjklas", Name: "Arena (Atención Integral del Autismo)", Location: "Av. Eugenio Garza Sada 2501 Sur, Tecnológico, 64849 Monterrey, N.L.", Description: "Atención Integral del Autismo. Terapias especializadas y servicio de evaluación y diagnostico de Autismo y Asperger", Tags: ["kjsadkajs"], Igtag: "lksjdkla", Telephone: "6562465495", Email: "kjdsalkjdaskl", Rating: 3)])
}
