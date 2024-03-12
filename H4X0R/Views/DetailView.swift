//
//  DetailView.swift
//  H4X0R
//
//  Created by Priyal PORWAL on 12/03/24.
//

import SwiftUI

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
