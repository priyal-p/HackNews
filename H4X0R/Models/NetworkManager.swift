//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Priyal PORWAL on 12/03/24.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()

    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let dataTask = session.dataTask(with: url) { [weak self] data, response, error in
                guard let self else { return }
                if let error {
                    print(error.localizedDescription)
                } else if let data {
                    let decoder = JSONDecoder()
                    do {
                        let results = try decoder.decode(Results.self, from: data)
                        DispatchQueue.main.async {
                            self.posts = results.hits ?? []
                        }
                    } catch {
                        print("Data Error",error.localizedDescription)
                    }
                }
            }
            dataTask.resume()
        }
    }
}
