//
//  DetailView.swift
//  H4XOR New
//
//  Created by John Jenkins on 9/24/20.
//  Copyright © 2020 John Jenkins. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
