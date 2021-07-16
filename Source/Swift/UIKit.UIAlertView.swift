@_exported import Foundation

enum UIAlertViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIAlertViewStyle { get }
  case secureTextInput
  @available(swift, obsoleted: 3, renamed: "secureTextInput")
  static var SecureTextInput: UIAlertViewStyle { get }
  case plainTextInput
  @available(swift, obsoleted: 3, renamed: "plainTextInput")
  static var PlainTextInput: UIAlertViewStyle { get }
  case loginAndPasswordInput
  @available(swift, obsoleted: 3, renamed: "loginAndPasswordInput")
  static var LoginAndPasswordInput: UIAlertViewStyle { get }
}
@available(iOS, introduced: 2.0, deprecated: 9.0, message: "UIAlertView is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleAlert instead")
class UIAlertView : UIView {
  convenience init(title: String?, message: String?, delegate: Any?, cancelButtonTitle: String?)
  init(frame: CGRect)
  init?(coder: NSCoder)
  weak var delegate: @sil_weak AnyObject?
  var title: String
  var message: String?
  func addButton(withTitle title: String?) -> Int
  @available(swift, obsoleted: 3, renamed: "addButton(withTitle:)")
  func addButtonWithTitle(_ title: String?) -> Int
  func buttonTitle(at buttonIndex: Int) -> String?
  @available(swift, obsoleted: 3, renamed: "buttonTitle(at:)")
  func buttonTitleAtIndex(_ buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var isVisible: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isVisible")
  var visible: Bool { get }
  func show()
  func dismiss(withClickedButtonIndex buttonIndex: Int, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismiss(withClickedButtonIndex:animated:)")
  func dismissWithClickedButtonIndex(_ buttonIndex: Int, animated: Bool)
  @available(iOS 5.0, *)
  var alertViewStyle: UIAlertViewStyle
  @available(iOS 5.0, *)
  func textField(at textFieldIndex: Int) -> UITextField?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "textField(at:)")
  func textFieldAtIndex(_ textFieldIndex: Int) -> UITextField?
  convenience init()
}

extension UIAlertView {
  convenience init(title: String, message: String, delegate: UIAlertViewDelegate?, cancelButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIAlertViewDelegate : NSObjectProtocol {
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertView(_ alertView: UIAlertView, clickedButtonAt buttonIndex: Int)
  @available(swift, obsoleted: 3, renamed: "alertView(_:clickedButtonAt:)")
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertView(_ alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertViewCancel(_ alertView: UIAlertView)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func willPresent(_ alertView: UIAlertView)
  @available(swift, obsoleted: 3, renamed: "willPresent(_:)")
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func willPresentAlertView(_ alertView: UIAlertView)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func didPresent(_ alertView: UIAlertView)
  @available(swift, obsoleted: 3, renamed: "didPresent(_:)")
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func didPresentAlertView(_ alertView: UIAlertView)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertView(_ alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertView(_ alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertViewShouldEnableFirstOtherButton(_ alertView: UIAlertView) -> Bool
}
