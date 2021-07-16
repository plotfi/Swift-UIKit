@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIGestureRecognizer.State")
typealias UIGestureRecognizerState = UIGestureRecognizer.State
extension UIGestureRecognizer {
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case possible
    @available(swift, obsoleted: 3, renamed: "possible")
    static var Possible: UIGestureRecognizer.State { get }
    case began
    @available(swift, obsoleted: 3, renamed: "began")
    static var Began: UIGestureRecognizer.State { get }
    case changed
    @available(swift, obsoleted: 3, renamed: "changed")
    static var Changed: UIGestureRecognizer.State { get }
    case ended
    @available(swift, obsoleted: 3, renamed: "ended")
    static var Ended: UIGestureRecognizer.State { get }
    case cancelled
    @available(swift, obsoleted: 3, renamed: "cancelled")
    static var Cancelled: UIGestureRecognizer.State { get }
    case failed
    @available(swift, obsoleted: 3, renamed: "failed")
    static var Failed: UIGestureRecognizer.State { get }
    static var recognized: UIGestureRecognizer.State { get }
  }
}
@available(iOS 3.2, *)
class UIGestureRecognizer : NSObject {
  init(target: Any?, action: Selector?)
  convenience init()
  convenience init?(coder: NSCoder)
  func addTarget(_ target: Any, action: Selector)
  func removeTarget(_ target: Any?, action: Selector?)
  var state: UIGestureRecognizer.State { get }
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  @available(iOS 9.0, *)
  var allowedTouchTypes: [NSNumber]
  @available(iOS 9.0, *)
  var allowedPressTypes: [NSNumber]
  @available(iOS 9.2, *)
  var requiresExclusiveTouchType: Bool
  func require(toFail otherGestureRecognizer: UIGestureRecognizer)
  @available(swift, obsoleted: 3, renamed: "require(toFail:)")
  func requireGestureRecognizerToFail(_ otherGestureRecognizer: UIGestureRecognizer)
  func location(in view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "location(in:)")
  func locationInView(_ view: UIView?) -> CGPoint
  var numberOfTouches: Int { get }
  func location(ofTouch touchIndex: Int, in view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "location(ofTouch:in:)")
  func locationOfTouch(_ touchIndex: Int, inView view: UIView?) -> CGPoint
  @available(iOS 11.0, *)
  var name: String?
  @available(iOS 13.4, *)
  var modifierFlags: UIKeyModifierFlags { get }
  @available(iOS 13.4, *)
  var buttonMask: UIEvent.ButtonMask { get }
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  @available(iOS 3.2, *)
  optional func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(swift, obsoleted: 3, renamed: "gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)")
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "gestureRecognizer(_:shouldRequireFailureOf:)")
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "gestureRecognizer(_:shouldBeRequiredToFailBy:)")
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(swift, obsoleted: 3, renamed: "gestureRecognizer(_:shouldReceive:)")
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  @available(iOS 9.0, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
  @available(swift, obsoleted: 3, renamed: "gestureRecognizer(_:shouldReceive:)")
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
  @available(iOS 13.4, *)
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive event: UIEvent) -> Bool
  @available(iOS 13.4, *)
  @available(swift, obsoleted: 3, renamed: "gestureRecognizer(_:shouldReceive:)")
  optional func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceiveEvent event: UIEvent) -> Bool
}
