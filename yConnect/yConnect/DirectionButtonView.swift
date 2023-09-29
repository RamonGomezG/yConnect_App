//
//  DirectionButtonView.swift
//  AppFinal
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct DirectionButtonView: View {
    @State var address: String
    
    var body: some View {
        Button(action: {
            let formattedAdress = address.replacingOccurrences(of: "", with: "+")
            if let url = URL(string: "https://maps.apple.com/?q=\(formattedAdress)"){
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }) {
            Text("Indicaciones")
                .foregroundColor(.white)
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color("BackColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }

    }
}

#Preview {
    DirectionButtonView(address: "Av. Eugenio Garza Sada 2501 Sur, Tecnológico, 64849 Monterrey, N.L.")
}
