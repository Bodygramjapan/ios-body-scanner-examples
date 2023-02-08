//
//  ContentView.swift
//  B2F-SwiftUI-Example
//
//  Created by Rogelio Martinez Kobashi on 2023/02/08.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        
    }
}

struct WebView: UIViewRepresentable {
  private let webView = WKWebView()
  private let request: URLRequest
  
  init() {
    let url = Bundle.main.url(forResource: "index", withExtension: "html")!
    request = URLRequest(url: url)
  }
  
  func makeUIView(context: Context) -> WKWebView  {
    return webView
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    uiView.load(request)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
