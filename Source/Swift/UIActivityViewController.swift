@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIActivityViewController.CompletionHandler")
typealias UIActivityViewControllerCompletionHandler = UIActivityViewController.CompletionHandler
extension UIActivityViewController {
  typealias CompletionHandler = (UIActivity.ActivityType?, Bool) -> Void
  typealias CompletionWithItemsHandler = (UIActivity.ActivityType?, Bool, [Any]?, Error?) -> Void
}
@available(swift, obsoleted: 4.2, renamed: "UIActivityViewController.CompletionWithItemsHandler")
typealias UIActivityViewControllerCompletionWithItemsHandler = UIActivityViewController.CompletionWithItemsHandler
@available(iOS 6.0, *)
class UIActivityViewController : UIViewController {
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  @available(*, unavailable)
  convenience init?(coder: NSCoder)
  init(activityItems: [Any], applicationActivities: [UIActivity]?)
  @available(iOS, introduced: 6.0, deprecated: 8.0)
  var completionHandler: UIActivityViewController.CompletionHandler?
  @available(iOS 8.0, *)
  var completionWithItemsHandler: UIActivityViewController.CompletionWithItemsHandler?
  var excludedActivityTypes: [UIActivity.ActivityType]?
}
extension UIActivityViewController {
  @available(iOS 14.0, *)
  convenience init(activityItemsConfiguration: UIActivityItemsConfigurationReading)
}
