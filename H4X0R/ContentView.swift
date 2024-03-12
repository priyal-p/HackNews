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
            List {
                NavigationLink(destination: Text("Destination")) { Text("Navigate") }
            }
            .navigationTitle("Hack News")
            .navigationBarTitleDisplayMode(.automatic)
        })
    }
}

#Preview {
    ContentView()
}
