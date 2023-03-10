//
//  ViewController.swift
//  B2F-UIKit-Example
//
//  Created by Rogelio Martinez Kobashi on 2023/02/09.
//

import UIKit

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
    let vc = WebViewViewController()
    navigationController?.pushViewController(vc, animated: true)
  }
}

private class WebViewViewController: UIViewController {
  override func loadView() {
    super.loadView()
    let configuration = BGWebViewConfiguration()
    view = BGWebView(frame: .zero, configuration: configuration)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let url = Bundle.main.url(forResource: "index", withExtension: "html")!
    let request = URLRequest(url: url)
    (view as? BGWebView)?.load(request)
  }
}
