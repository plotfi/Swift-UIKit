@_exported import Foundation

@available(iOS 3.2, *)
class UIDocumentInteractionController : NSObject, UIActionSheetDelegate {
  /*not inherited*/ init(url: URL)
  @available(swift, obsoleted: 3, renamed: "init(url:)")
  /*not inherited*/ init(URL url: URL)
  @available(*, unavailable, renamed: "init(url:)", message: "Not available in Swift")
  class func interactionControllerWithURL(_ url: URL) -> UIDocumentInteractionController
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var url: URL?
  @available(swift, obsoleted: 3, renamed: "url")
  var URL: URL?
  var uti: String?
  @available(swift, obsoleted: 3, renamed: "uti")
  var UTI: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: Any?
  func presentOptionsMenu(from rect: CGRect, in view: UIView, animated: Bool) -> Bool
  @available(swift, obsoleted: 3, renamed: "presentOptionsMenu(from:in:animated:)")
  func presentOptionsMenuFromRect(_ rect: CGRect, inView view: UIView, animated: Bool) -> Bool
  func presentOptionsMenu(from item: UIBarButtonItem, animated: Bool) -> Bool
  @available(swift, obsoleted: 3, renamed: "presentOptionsMenu(from:animated:)")
  func presentOptionsMenuFromBarButtonItem(_ item: UIBarButtonItem, animated: Bool) -> Bool
  func presentPreview(animated: Bool) -> Bool
  @available(swift, obsoleted: 3, renamed: "presentPreview(animated:)")
  func presentPreviewAnimated(_ animated: Bool) -> Bool
  func presentOpenInMenu(from rect: CGRect, in view: UIView, animated: Bool) -> Bool
  @available(swift, obsoleted: 3, renamed: "presentOpenInMenu(from:in:animated:)")
  func presentOpenInMenuFromRect(_ rect: CGRect, inView view: UIView, animated: Bool) -> Bool
  func presentOpenInMenu(from item: UIBarButtonItem, animated: Bool) -> Bool
  @available(swift, obsoleted: 3, renamed: "presentOpenInMenu(from:animated:)")
  func presentOpenInMenuFromBarButtonItem(_ item: UIBarButtonItem, animated: Bool) -> Bool
  func dismissPreview(animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismissPreview(animated:)")
  func dismissPreviewAnimated(_ animated: Bool)
  func dismissMenu(animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismissMenu(animated:)")
  func dismissMenuAnimated(_ animated: Bool)
  var gestureRecognizers: [UIGestureRecognizer] { get }
  init()
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  func actionSheetCancel(_ actionSheet: UIActionSheet)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  func willPresent(_ actionSheet: UIActionSheet)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  func didPresent(_ actionSheet: UIActionSheet)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  func actionSheet(_ actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  func actionSheet(_ actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
@available(iOS 3.2, *)
protocol UIDocumentInteractionControllerDelegate : NSObjectProtocol {
  optional func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController
  optional func documentInteractionControllerRectForPreview(_ controller: UIDocumentInteractionController) -> CGRect
  optional func documentInteractionControllerViewForPreview(_ controller: UIDocumentInteractionController) -> UIView?
  optional func documentInteractionControllerWillBeginPreview(_ controller: UIDocumentInteractionController)
  optional func documentInteractionControllerDidEndPreview(_ controller: UIDocumentInteractionController)
  optional func documentInteractionControllerWillPresentOptionsMenu(_ controller: UIDocumentInteractionController)
  optional func documentInteractionControllerDidDismissOptionsMenu(_ controller: UIDocumentInteractionController)
  optional func documentInteractionControllerWillPresentOpenInMenu(_ controller: UIDocumentInteractionController)
  optional func documentInteractionControllerDidDismissOpenInMenu(_ controller: UIDocumentInteractionController)
  optional func documentInteractionController(_ controller: UIDocumentInteractionController, willBeginSendingToApplication application: String?)
  optional func documentInteractionController(_ controller: UIDocumentInteractionController, didEndSendingToApplication application: String?)
  @available(iOS, unavailable, introduced: 3.2, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  optional func documentInteractionController(_ controller: UIDocumentInteractionController, canPerformAction action: Selector?) -> Bool
  @available(iOS, unavailable, introduced: 3.2, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  optional func documentInteractionController(_ controller: UIDocumentInteractionController, performAction action: Selector?) -> Bool
}
