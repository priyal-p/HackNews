//
//  ContentView.swift
//  H4X0R
//
//  Created by Priyal PORWAL on 12/03/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView(content: {
            List(networkManager.posts,
                 rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points ?? 0))
                        Text(post.title ?? "")
                    }
                }
            })
            .navigationTitle("Hack News")
            .navigationBarTitleDisplayMode(.automatic)
        })
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
