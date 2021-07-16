@_exported import Foundation

typealias __UIStoryboardViewControllerCreator = (NSCoder) -> UIViewController?
@available(iOS 5.0, *)
class UIStoryboard : NSObject {
  /*not inherited*/ init(name: String, bundle storyboardBundleOrNil: Bundle?)
  @available(*, unavailable, renamed: "init(name:bundle:)", message: "Not available in Swift")
  class func storyboardWithName(_ name: String, bundle storyboardBundleOrNil: Bundle?) -> UIStoryboard
  func instantiateInitialViewController() -> UIViewController?
  @available(iOS 13.0, *)
  func __instantiateInitialViewController(creator block: ((NSCoder) -> UIViewController?)? = nil) -> UIViewController?
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "__instantiateInitialViewController(creator:)")
  func __instantiateInitialViewControllerWithCreator(_ block: ((NSCoder) -> UIViewController?)? = nil) -> UIViewController?
  func instantiateViewController(withIdentifier identifier: String) -> UIViewController
  @available(swift, obsoleted: 3, renamed: "instantiateViewController(withIdentifier:)")
  func instantiateViewControllerWithIdentifier(_ identifier: String) -> UIViewController
  @available(iOS 13.0, *)
  func __instantiateViewController(withIdentifier identifier: String, creator block: ((NSCoder) -> UIViewController?)? = nil) -> UIViewController
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "__instantiateViewController(withIdentifier:creator:)")
  func __instantiateViewControllerWithIdentifier(_ identifier: String, creator block: ((NSCoder) -> UIViewController?)? = nil) -> UIViewController
  init()
}

extension UIStoryboard {
  @available(iOS 13.0, tvOS 13.0, *)
  func instantiateInitialViewController<ViewController>(creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController? where ViewController : UIViewController
  @available(iOS 13.0, tvOS 13.0, *)
  func instantiateViewController<ViewController>(identifier: String, creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController where ViewController : UIViewController
}
