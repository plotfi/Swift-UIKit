@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIPress.Phase")
typealias UIPressPhase = UIPress.Phase
extension UIPress {
  @available(iOS 9.0, *)
  enum Phase : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case began
    @available(swift, obsoleted: 3, renamed: "began")
    static var Began: UIPress.Phase { get }
    case changed
    @available(swift, obsoleted: 3, renamed: "changed")
    static var Changed: UIPress.Phase { get }
    case stationary
    @available(swift, obsoleted: 3, renamed: "stationary")
    static var Stationary: UIPress.Phase { get }
    case ended
    @available(swift, obsoleted: 3, renamed: "ended")
    static var Ended: UIPress.Phase { get }
    case cancelled
    @available(swift, obsoleted: 3, renamed: "cancelled")
    static var Cancelled: UIPress.Phase { get }
  }
  @available(iOS 9.0, *)
  enum PressType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case upArrow
    @available(swift, obsoleted: 3, renamed: "upArrow")
    static var UpArrow: UIPress.PressType { get }
    case downArrow
    @available(swift, obsoleted: 3, renamed: "downArrow")
    static var DownArrow: UIPress.PressType { get }
    case leftArrow
    @available(swift, obsoleted: 3, renamed: "leftArrow")
    static var LeftArrow: UIPress.PressType { get }
    case rightArrow
    @available(swift, obsoleted: 3, renamed: "rightArrow")
    static var RightArrow: UIPress.PressType { get }
    case select
    @available(swift, obsoleted: 3, renamed: "select")
    static var Select: UIPress.PressType { get }
    case menu
    @available(swift, obsoleted: 3, renamed: "menu")
    static var Menu: UIPress.PressType { get }
    case playPause
    @available(swift, obsoleted: 3, renamed: "playPause")
    static var PlayPause: UIPress.PressType { get }
    @available(iOS, unavailable)
    case pageUp
    @available(iOS, unavailable)
    case pageDown
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIPress.PressType")
typealias UIPressType = UIPress.PressType
@available(iOS 9.0, *)
class UIPress : NSObject {
  var timestamp: TimeInterval { get }
  var phase: UIPress.Phase { get }
  var type: UIPress.PressType { get }
  var window: UIWindow? { get }
  var responder: UIResponder? { get }
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  var force: CGFloat { get }

  /// For presses that originate from a hardware keyboard, contains a UIKey object describing the key being acted upon.
  /// This property is nil if the press did not originate from a hardware keyboard.
  var key: UIKey? { get }
  init()
}
