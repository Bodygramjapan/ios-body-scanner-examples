//
//  B2F_SwiftUI_ExampleApp.swift
//  B2F-SwiftUI-Example
//
//  Created by Rogelio Martinez Kobashi on 2023/02/08.
//

import SwiftUI
import WebKit

@main
struct B2F_SwiftUI_ExampleApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationView {
        NavigationLink(destination: WebView()) {
          Text("Open")
        }
      }
    }
  }
}

private struct WebView: UIViewRepresentable {
  private let webView: WKWebView
  private let request: URLRequest
  
  init() {
    let configuration = BGWebViewConfiguration()
    webView = BGWebView(frame: .zero, configuration: configuration)
    
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
