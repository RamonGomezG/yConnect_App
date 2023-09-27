//  TraiView.swift
//  App02-TMDB
//
//  Created by David Cantú Delgado on 24/08/23.
//

import SwiftUI
import WebKit
 
struct VideoView: View {
    var videoLink: String
    var videoTitle: String
    
    var body: some View {
                VStack {
                    EmbedView(videoLink: videoLink)
                        
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: 330, height: 270) 
                .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}
 
struct EmbedView: UIViewRepresentable {
    var videoLink: String;
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "\(videoLink)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
 
#Preview {
    VideoView(videoLink: "https://www.youtube.com/embed/Px0vCTfdJ4o?si=exxqj4EAW0r5yCVb", videoTitle: "yCo Centro de Fortalecimiento 2021")
}
