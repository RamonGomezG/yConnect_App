//
//  CallButtonView.swift
//  AppFinal
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct CallButtonView: View {
    @State var phoneNumber: String
    @State var isActionSheet = false
    
    var body: some View {
        Button(action: {
            isActionSheet.toggle()
        }) {
            Text("Llamar")
                .foregroundColor(.white)
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color("BackColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .actionSheet(isPresented: $isActionSheet) {
            ActionSheet(
                title: Text("¿Llamar a esta organización?"),
                buttons: [
                    .default(Text("Llamar")){
                        if let url = URL(string: "tel://\(phoneNumber)"){
                            UIApplication.shared.open(url)
                        }
                    },
                    .cancel()
                ]
            )
        }
    }
}

#Preview {
    CallButtonView(phoneNumber: "81 298 391 283")
}
