//
//  ImageView.swift
//  yConnect
//
//  Created by user248071 on 9/26/23.
//

import SwiftUI
import Kingfisher

struct ImageView: View {
    var url: String
    
    var body: some View {
        KFImage(URL(string: "\(url)" ))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 330, height: 330)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ImageView(url:"https://scontent-qro1-1.xx.fbcdn.net/v/t39.30808-6/379414828_370406048647065_5900128128262878857_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=5614bc&_nc_eui2=AeHRlggEaKf6yR5NJjPkEzDIWzahfzTwiltbNqF_NPCKW3g8vlWybF5-NzipF_s9e8ywoCELZu8x2LpNFuduGZZ-&_nc_ohc=To6h-Q0KhkkAX_HIoKO&_nc_ht=scontent-qro1-1.xx&oh=00_AfDeDsKgOjU0J-YbybQvvoeqc3fc9hPdKlr06z_Dt8Cl2g&oe=6518534C")
}
