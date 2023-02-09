import WebKit

final class BGWebViewConfiguration: WKWebViewConfiguration {
  override init() {
    super.init()
    self.allowsInlineMediaPlayback = true // need to set this to be able to show the camera
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
