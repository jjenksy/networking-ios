//
//  WebView.swift
//  H4XOR New
//
//  Created by John Jenkins on 9/24/20.
//  Copyright © 2020 John Jenkins. All rights reserved.
//

import Foundation
import UIKit
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
