//
//  WebView.swift
//  H4X0R
//
//  Created by Priyal PORWAL on 12/03/24.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView,
                      context: Context) {
        if let urlString,
            let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
