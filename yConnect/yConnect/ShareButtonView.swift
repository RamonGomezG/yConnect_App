//
//  ShareButtonView.swift
//  AppFinal
//
//  Created by Alumno on 25/09/23.
//

import SwiftUI

struct ShareButtonView: View {
    @State var shareText: String
    @State var icon: String
    
    var body: some View {
        Button(action: {
            let textShare = [shareText]
            let activityViewController = UIActivityViewController(activityItems: textShare, applicationActivities: nil)
            UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
        }) {
            HStack{
                Image(systemName: "arrowshape.turn.up.right.fill")
                Text("Compartir")
                    .font(.system(size: 14))
            }
                .foregroundColor(.white)
                .bold()
                .padding(.vertical, 5)
                .padding(.horizontal, 5)
                .background(Color("BackColor"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    ShareButtonView(shareText: "Apps", icon: "arrowshape.turn.up.right.fill")
}
