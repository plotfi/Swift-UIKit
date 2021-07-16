@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIWindow.Level")
typealias UIWindowLevel = UIWindow.Level
extension UIWindow {
  struct Level : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: CGFloat)
    init(rawValue: CGFloat)
    let rawValue: CGFloat
    typealias RawValue = CGFloat
  }
  class let didBecomeVisibleNotification: NSNotification.Name
  class let didBecomeHiddenNotification: NSNotification.Name
  class let didBecomeKeyNotification: NSNotification.Name
  class let didResignKeyNotification: NSNotification.Name
}
@available(iOS 2.0, *)
class UIWindow : UIView {
  @available(iOS 13.0, *)
  init(windowScene: UIWindowScene)
  @available(iOS 13.0, *)
  weak var windowScene: @sil_weak UIWindowScene?
  var canResizeToFitContent: Bool
  @available(iOS 3.2, *)
  var screen: UIScreen
  var windowLevel: UIWindow.Level
  var isKeyWindow: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isKeyWindow")
  var keyWindow: Bool { get }
  func becomeKey()
  @available(swift, obsoleted: 3, renamed: "becomeKey()")
  func becomeKeyWindow()
  func resignKey()
  @available(swift, obsoleted: 3, renamed: "resignKey()")
  func resignKeyWindow()
  func makeKey()
  @available(swift, obsoleted: 3, renamed: "makeKey()")
  func makeKeyWindow()
  func makeKeyAndVisible()
  @available(iOS 4.0, *)
  var rootViewController: UIViewController?
  func sendEvent(_ event: UIEvent)
  func convert(_ point: CGPoint, to window: UIWindow?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "convert(_:to:)")
  func convertPoint(_ point: CGPoint, toWindow window: UIWindow?) -> CGPoint
  func convert(_ point: CGPoint, from window: UIWindow?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "convert(_:from:)")
  func convertPoint(_ point: CGPoint, fromWindow window: UIWindow?) -> CGPoint
  func convert(_ rect: CGRect, to window: UIWindow?) -> CGRect
  @available(swift, obsoleted: 3, renamed: "convert(_:to:)")
  func convertRect(_ rect: CGRect, toWindow window: UIWindow?) -> CGRect
  func convert(_ rect: CGRect, from window: UIWindow?) -> CGRect
  @available(swift, obsoleted: 3, renamed: "convert(_:from:)")
  func convertRect(_ rect: CGRect, fromWindow window: UIWindow?) -> CGRect
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(swift, obsoleted: 3, renamed: "UIWindow.Level.normal")
let UIWindowLevelNormal: UIWindow.Level
extension UIWindow.Level {
  static let normal: UIWindow.Level
  static let alert: UIWindow.Level
  static let statusBar: UIWindow.Level
}
@available(swift, obsoleted: 3, renamed: "UIWindow.Level.alert")
let UIWindowLevelAlert: UIWindow.Level
@available(swift, obsoleted: 3, renamed: "UIWindow.Level.statusBar")
let UIWindowLevelStatusBar: UIWindow.Level
@available(swift, obsoleted: 3, renamed: "UIWindow.didBecomeVisibleNotification")
let UIWindowDidBecomeVisibleNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIWindow.didBecomeHiddenNotification")
let UIWindowDidBecomeHiddenNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIWindow.didBecomeKeyNotification")
let UIWindowDidBecomeKeyNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIWindow.didResignKeyNotification")
let UIWindowDidResignKeyNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIResponder.keyboardWillShowNotification")
let UIKeyboardWillShowNotification: NSNotification.Name
extension UIResponder {
  class let keyboardWillShowNotification: NSNotification.Name
  class let keyboardDidShowNotification: NSNotification.Name
  class let keyboardWillHideNotification: NSNotification.Name
  class let keyboardDidHideNotification: NSNotification.Name
  @available(iOS 3.2, *)
  class let keyboardFrameBeginUserInfoKey: String
  @available(iOS 3.2, *)
  class let keyboardFrameEndUserInfoKey: String
  @available(iOS 3.0, *)
  class let keyboardAnimationDurationUserInfoKey: String
  @available(iOS 3.0, *)
  class let keyboardAnimationCurveUserInfoKey: String
  @available(iOS 9.0, *)
  class let keyboardIsLocalUserInfoKey: String
  @available(iOS 5.0, *)
  class let keyboardWillChangeFrameNotification: NSNotification.Name
  @available(iOS 5.0, *)
  class let keyboardDidChangeFrameNotification: NSNotification.Name
}
@available(swift, obsoleted: 3, renamed: "UIResponder.keyboardDidShowNotification")
let UIKeyboardDidShowNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIResponder.keyboardWillHideNotification")
let UIKeyboardWillHideNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIResponder.keyboardDidHideNotification")
let UIKeyboardDidHideNotification: NSNotification.Name
@available(iOS 3.2, *)
@available(swift, obsoleted: 4.2, renamed: "UIResponder.keyboardFrameBeginUserInfoKey")
let UIKeyboardFrameBeginUserInfoKey: String
@available(iOS 3.2, *)
@available(swift, obsoleted: 4.2, renamed: "UIResponder.keyboardFrameEndUserInfoKey")
let UIKeyboardFrameEndUserInfoKey: String
@available(iOS 3.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIResponder.keyboardAnimationDurationUserInfoKey")
let UIKeyboardAnimationDurationUserInfoKey: String
@available(iOS 3.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIResponder.keyboardAnimationCurveUserInfoKey")
let UIKeyboardAnimationCurveUserInfoKey: String
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIResponder.keyboardIsLocalUserInfoKey")
let UIKeyboardIsLocalUserInfoKey: String
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIResponder.keyboardWillChangeFrameNotification")
let UIKeyboardWillChangeFrameNotification: NSNotification.Name
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIResponder.keyboardDidChangeFrameNotification")
let UIKeyboardDidChangeFrameNotification: NSNotification.Name
@available(iOS, unavailable, introduced: 2.0, deprecated: 3.2, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
let UIKeyboardCenterBeginUserInfoKey: String
@available(iOS, unavailable, introduced: 2.0, deprecated: 3.2, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
let UIKeyboardCenterEndUserInfoKey: String
@available(iOS, unavailable, introduced: 2.0, deprecated: 3.2, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
let UIKeyboardBoundsUserInfoKey: String
