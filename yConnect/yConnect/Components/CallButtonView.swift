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
    @State var icon: String
    
    var body: some View {
        Button(action: {
            isActionSheet.toggle()
        }) {
            HStack{
                Image(systemName: "phone.fill")
                Text("Llamar")
                    .font(.system(size: 15))
            }
                .foregroundColor(.white)
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal, 5)
                .background(Color("BackColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .actionSheet(isPresented: $isActionSheet) {
            ActionSheet(
                title: Text("¿Llamar a esta organización?"),
                buttons: [
                    .default(Text(phoneNumber)){
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
    CallButtonView(phoneNumber: "81 298 391 283", icon: "phone.fill")
}
