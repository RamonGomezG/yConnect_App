//
//  ShareButtonView.swift
//  yConnect
//
//  Created by Alumno on 28/09/23.
//

import SwiftUI

struct ShareButtonView: View {
    @State var shareText: String
    
    var body: some View {
        Button(action: {
            let textShare = [shareText]
            let activityViewController = UIActivityViewController(activityItems: textShare, applicationActivities: nil)
            UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
        }) {
            Text("Compartir")
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
    ShareButtonView(shareText: "Apps")
}
