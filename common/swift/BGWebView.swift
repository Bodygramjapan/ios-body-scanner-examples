import WebKit

final class BGWebView: WKWebView, WKUIDelegate {
  override init(frame: CGRect, configuration: WKWebViewConfiguration) {
    super.init(frame: frame, configuration: configuration)
    self.uiDelegate = self // need to set this delegate in order to access to the motion sensor
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
