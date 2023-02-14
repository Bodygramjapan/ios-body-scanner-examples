This repository contains two example iOS projects which showcase how to implement *Body Scanner* widget. One project uses SwiftUI and the other one uses UIKit.

**iOS supported versions**: 15.5 and above (15.0 is supported **only** when loading the widget from a hosted server).

## Previous considerations
- These projects assume you **already have** a [Session ID](common/www/body-scanner.js#L2). To know how to generate it please refer to the [Body Scanner User Guide Step 1](https://developers.bodygram.com/scan/integration/#step-1-obtain-a-session-id-for-embedding-the-widget)
- Since Body Scanner makes use of the camera, it is **necessary** to have `NSCameraUsageDescription` key in your app’s Info.plist.

## Remository structure
- [B2F-SwiftUI-Example/B2F_SwiftUI_ExampleApp](B2F-SwiftUI-Example/B2F-SwiftUI-Example/B2F_SwiftUI_ExampleApp.swift): SwiftUI project entry point to open web page.
- [B2F-UIKit-Example/ViewController](B2F-UIKit-Example/B2F-UIKit-Example/ViewController.swift): UIKit project entry point to open web page.
- [common/www](common/www): Contains the web code (taken from [Body Scanner User Guide Step 2](https://developers.bodygram.com/scan/integration/#step-2-embed-the-body-scanner-widget-in-your-page)) used on both projects.
- [common/swift](common/swift): Contains WebKit code used on both projects.

### Entry points explanation
1. `BGWebViewConfiguration` is created.
2. `BGWebView` is created and receives the configuration from step no.1 as parameter.
3. [index.html](common/www/index.html) is loaded into a `URL`.
4. `URLRequest` is created and receives the url from step no.3 as parameter.
5. `load(_:)` is called on the webview from step no.2 with the request created on step no.4 as parameter.

### WebKit code explanation
- `BGWebView` (subclass of `WKWebView`): The **important** thing is to set *uiDelegate* even if there is no functions implemented. This is needed so the motion sensor permissions request is shown.
- `BGWebViewConfiguration` (subclass of `WKWebViewConfiguration`): The **important** thing is to set *allowsInlineMediaPlayback = true* so the camera is shown properly.

## Screencasts

| SwiftUI                                                                                                            | UIKit                                                                                                            |
|--------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| ![SwiftUI](https://user-images.githubusercontent.com/114892074/218672167-860ad3ba-946a-425f-b452-193babd69c57.gif) | ![UIKit](https://user-images.githubusercontent.com/114892074/218672161-c23230ad-d70f-435c-9974-cf398a85cb58.gif) |

----
If you think this document is not clear enough please feel free to create a PR/issue.
