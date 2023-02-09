//
//  ViewController.swift
//  B2F-UIKit-Example
//
//  Created by Rogelio Martinez Kobashi on 2023/02/09.
//

import UIKit
import WebKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let button = UIButton()
    button.setTitle("Open", for: .normal)
    button.setTitleColor(.blue, for: .normal)
    button.addTarget(self, action: #selector(open), for: .touchUpInside)
    button.sizeToFit()
    button.center = self.view.center
    self.view.addSubview(button)
    self.view.backgroundColor = .white
  }
  
  @objc private func open() {
    
  }
}

private final class BGWebViewConfiguration: WKWebViewConfiguration {
  override init() {
    super.init()
    self.allowsInlineMediaPlayback = true // need to set this to be able to show the camera
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

private final class BGWebView: WKWebView, WKUIDelegate {
  override init(frame: CGRect, configuration: WKWebViewConfiguration) {
    super.init(frame: frame, configuration: configuration)
    self.uiDelegate = self // need to set this delegate in order to access to the motion sensor
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
