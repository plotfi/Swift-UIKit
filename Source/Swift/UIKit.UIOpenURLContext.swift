@_exported import Foundation

@available(iOS 13.0, *)
class UIOpenURLContext : NSObject {
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  init()
  var url: URL { get }
  @available(swift, obsoleted: 3, renamed: "url")
  var URL: URL { get }
  var options: UIScene.OpenURLOptions { get }
}
