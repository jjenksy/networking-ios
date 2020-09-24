//
//  NetworkManager.swift
//  H4XOR New
//
//  Created by John Jenkins on 9/24/20.
//  Copyright © 2020 John Jenkins. All rights reserved.
//

import Foundation


class NetWorkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, resopnse, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                           let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                 self.posts = results.hits
                            }
                        
                        } catch {
                            print(error)
                        }
                          
                    }
                    
                }
            }
            task.resume()
        }
    }
}
