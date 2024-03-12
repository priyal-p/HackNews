//
//  ContentView.swift
//  H4X0R
//
//  Created by Priyal PORWAL on 12/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            List(posts,
                 rowContent: { post in
                NavigationLink(destination: Text("Destination")) { Text(post.title) }
            })
            .navigationTitle("Hack News")
            .navigationBarTitleDisplayMode(.automatic)
        })
    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable {
    var id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hello 1"),
    Post(id: "3", title: "Hello 2"),
    Post(id: "4", title: "Hello 3")
]
