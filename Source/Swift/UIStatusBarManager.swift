@_exported import Foundation

@available(iOS 13.0, *)
class UIStatusBarManager : NSObject {
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var statusBarStyle: UIStatusBarStyle { get }
  var isStatusBarHidden: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isStatusBarHidden")
  var statusBarHidden: Bool { get }
  var statusBarFrame: CGRect { get }
}
extension UIWindowScene {
  @available(iOS 13.0, *)
  var statusBarManager: UIStatusBarManager? { get }
}
