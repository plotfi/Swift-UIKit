@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIEvent.EventType")
typealias UIEventType = UIEvent.EventType
extension UIEvent {
  enum EventType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case touches
    @available(swift, obsoleted: 3, renamed: "touches")
    static var Touches: UIEvent.EventType { get }
    case motion
    @available(swift, obsoleted: 3, renamed: "motion")
    static var Motion: UIEvent.EventType { get }
    case remoteControl
    @available(swift, obsoleted: 3, renamed: "remoteControl")
    static var RemoteControl: UIEvent.EventType { get }
    @available(iOS 9.0, *)
    case presses
    @available(iOS 9.0, *)
    @available(swift, obsoleted: 3, renamed: "presses")
    static var Presses: UIEvent.EventType { get }
    @available(iOS 13.4, *)
    case scroll
    @available(iOS 13.4, *)
    @available(swift, obsoleted: 3, renamed: "scroll")
    static var Scroll: UIEvent.EventType { get }
    @available(iOS 13.4, *)
    case hover
    @available(iOS 13.4, *)
    @available(swift, obsoleted: 3, renamed: "hover")
    static var Hover: UIEvent.EventType { get }
    @available(iOS 13.4, *)
    case transform
    @available(iOS 13.4, *)
    @available(swift, obsoleted: 3, renamed: "transform")
    static var Transform: UIEvent.EventType { get }
  }
  enum EventSubtype : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIEvent.EventSubtype { get }
    case motionShake
    @available(swift, obsoleted: 3, renamed: "motionShake")
    static var MotionShake: UIEvent.EventSubtype { get }
    case remoteControlPlay
    @available(swift, obsoleted: 3, renamed: "remoteControlPlay")
    static var RemoteControlPlay: UIEvent.EventSubtype { get }
    case remoteControlPause
    @available(swift, obsoleted: 3, renamed: "remoteControlPause")
    static var RemoteControlPause: UIEvent.EventSubtype { get }
    case remoteControlStop
    @available(swift, obsoleted: 3, renamed: "remoteControlStop")
    static var RemoteControlStop: UIEvent.EventSubtype { get }
    case remoteControlTogglePlayPause
    @available(swift, obsoleted: 3, renamed: "remoteControlTogglePlayPause")
    static var RemoteControlTogglePlayPause: UIEvent.EventSubtype { get }
    case remoteControlNextTrack
    @available(swift, obsoleted: 3, renamed: "remoteControlNextTrack")
    static var RemoteControlNextTrack: UIEvent.EventSubtype { get }
    case remoteControlPreviousTrack
    @available(swift, obsoleted: 3, renamed: "remoteControlPreviousTrack")
    static var RemoteControlPreviousTrack: UIEvent.EventSubtype { get }
    case remoteControlBeginSeekingBackward
    @available(swift, obsoleted: 3, renamed: "remoteControlBeginSeekingBackward")
    static var RemoteControlBeginSeekingBackward: UIEvent.EventSubtype { get }
    case remoteControlEndSeekingBackward
    @available(swift, obsoleted: 3, renamed: "remoteControlEndSeekingBackward")
    static var RemoteControlEndSeekingBackward: UIEvent.EventSubtype { get }
    case remoteControlBeginSeekingForward
    @available(swift, obsoleted: 3, renamed: "remoteControlBeginSeekingForward")
    static var RemoteControlBeginSeekingForward: UIEvent.EventSubtype { get }
    case remoteControlEndSeekingForward
    @available(swift, obsoleted: 3, renamed: "remoteControlEndSeekingForward")
    static var RemoteControlEndSeekingForward: UIEvent.EventSubtype { get }
  }

  /// Set of buttons pressed for the current event
  /// Raw format of: 1 << (buttonNumber - 1)
  /// UIEventButtonMaskPrimary = 1 << 0
  @available(iOS 13.4, *)
  struct ButtonMask : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    typealias RawValue = Int
    typealias Element = UIEvent.ButtonMask
    typealias ArrayLiteralElement = UIEvent.ButtonMask
    static var primary: UIEvent.ButtonMask { get }
    @available(swift, obsoleted: 3, renamed: "primary")
    static var Primary: UIEvent.ButtonMask { get }
    static var secondary: UIEvent.ButtonMask { get }
    @available(swift, obsoleted: 3, renamed: "secondary")
    static var Secondary: UIEvent.ButtonMask { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIEvent.EventSubtype")
typealias UIEventSubtype = UIEvent.EventSubtype

/// Set of buttons pressed for the current event
/// Raw format of: 1 << (buttonNumber - 1)
/// UIEventButtonMaskPrimary = 1 << 0
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIEvent.ButtonMask")
typealias UIEventButtonMask = UIEvent.ButtonMask

/// Convenience initializer for a button mask where `buttonNumber` is a one-based index of the button on the input device
/// .button(1) == .primary
/// .button(2) == .secondary
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIEventButtonMask.button(_:)")
func UIEventButtonMaskForButtonNumber(_ buttonNumber: Int) -> UIEvent.ButtonMask
extension UIEvent.ButtonMask {

  /// Convenience initializer for a button mask where `buttonNumber` is a one-based index of the button on the input device
  /// .button(1) == .primary
  /// .button(2) == .secondary
  @available(iOS 13.4, *)
  static func button(_ buttonNumber: Int) -> UIEvent.ButtonMask
}
@available(iOS 2.0, *)
class UIEvent : NSObject {
  @available(iOS 3.0, *)
  var type: UIEvent.EventType { get }
  @available(iOS 3.0, *)
  var subtype: UIEvent.EventSubtype { get }
  var timestamp: TimeInterval { get }
  @available(iOS 13.4, *)
  var modifierFlags: UIKeyModifierFlags { get }
  @available(iOS 13.4, *)
  var buttonMask: UIEvent.ButtonMask { get }
  var allTouches: Set<UITouch>? { get }
  func touches(for window: UIWindow) -> Set<UITouch>?
  @available(swift, obsoleted: 3, renamed: "touches(for:)")
  func touchesForWindow(_ window: UIWindow) -> Set<UITouch>?
  func touches(for view: UIView) -> Set<UITouch>?
  @available(swift, obsoleted: 3, renamed: "touches(for:)")
  func touchesForView(_ view: UIView) -> Set<UITouch>?
  @available(iOS 3.2, *)
  func touches(for gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "touches(for:)")
  func touchesForGestureRecognizer(_ gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(iOS 9.0, *)
  func coalescedTouches(for touch: UITouch) -> [UITouch]?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "coalescedTouches(for:)")
  func coalescedTouchesForTouch(_ touch: UITouch) -> [UITouch]?
  @available(iOS 9.0, *)
  func predictedTouches(for touch: UITouch) -> [UITouch]?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "predictedTouches(for:)")
  func predictedTouchesForTouch(_ touch: UITouch) -> [UITouch]?
  init()
}
