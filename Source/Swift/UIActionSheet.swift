@_exported import Foundation

@available(iOS, introduced: 2.0, deprecated: 13.0, message: "UIActionSheet is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleActionSheet instead.")
enum UIActionSheetStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case automatic
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: UIActionSheetStyle { get }
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIActionSheetStyle { get }
  case blackTranslucent
  @available(swift, obsoleted: 3, renamed: "blackTranslucent")
  static var BlackTranslucent: UIActionSheetStyle { get }
  case blackOpaque
  @available(swift, obsoleted: 3, renamed: "blackOpaque")
  static var BlackOpaque: UIActionSheetStyle { get }
}
@available(iOS, introduced: 2.0, deprecated: 8.3, message: "UIActionSheet is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleActionSheet instead")
class UIActionSheet : UIView {
  init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?)
  weak var delegate: @sil_weak UIActionSheetDelegate?
  var title: String
  var actionSheetStyle: UIActionSheetStyle
  func addButton(withTitle title: String?) -> Int
  @available(swift, obsoleted: 3, renamed: "addButton(withTitle:)")
  func addButtonWithTitle(_ title: String?) -> Int
  func buttonTitle(at buttonIndex: Int) -> String?
  @available(swift, obsoleted: 3, renamed: "buttonTitle(at:)")
  func buttonTitleAtIndex(_ buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var destructiveButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var isVisible: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isVisible")
  var visible: Bool { get }
  func show(from view: UIToolbar)
  @available(swift, obsoleted: 3, renamed: "show(from:)")
  func showFromToolbar(_ view: UIToolbar)
  func show(from view: UITabBar)
  @available(swift, obsoleted: 3, renamed: "show(from:)")
  func showFromTabBar(_ view: UITabBar)
  @available(iOS 3.2, *)
  func show(from item: UIBarButtonItem, animated: Bool)
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "show(from:animated:)")
  func showFromBarButtonItem(_ item: UIBarButtonItem, animated: Bool)
  @available(iOS 3.2, *)
  func show(from rect: CGRect, in view: UIView, animated: Bool)
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "show(from:in:animated:)")
  func showFromRect(_ rect: CGRect, inView view: UIView, animated: Bool)
  func show(in view: UIView)
  @available(swift, obsoleted: 3, renamed: "show(in:)")
  func showInView(_ view: UIView)
  func dismiss(withClickedButtonIndex buttonIndex: Int, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismiss(withClickedButtonIndex:animated:)")
  func dismissWithClickedButtonIndex(_ buttonIndex: Int, animated: Bool)
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
}

extension UIActionSheet {
  convenience init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIActionSheetDelegate : NSObjectProtocol {
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int)
  @available(swift, obsoleted: 3, renamed: "actionSheet(_:clickedButtonAt:)")
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheetCancel(_ actionSheet: UIActionSheet)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func willPresent(_ actionSheet: UIActionSheet)
  @available(swift, obsoleted: 3, renamed: "willPresent(_:)")
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func willPresentActionSheet(_ actionSheet: UIActionSheet)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func didPresent(_ actionSheet: UIActionSheet)
  @available(swift, obsoleted: 3, renamed: "didPresent(_:)")
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func didPresentActionSheet(_ actionSheet: UIActionSheet)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheet(_ actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheet(_ actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
