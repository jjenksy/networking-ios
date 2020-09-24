//
//  PostData.swift
//  H4XOR New
//
//  Created by John Jenkins on 9/24/20.
//  Copyright © 2020 John Jenkins. All rights reserved.
//

import Foundation


struct Results : Decodable {
    let hits: [Post]
}

struct Post : Decodable, Identifiable {
    //to use the Identifiable we need id field so we set objectID to id
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID : String
}
