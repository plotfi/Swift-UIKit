@_exported import Foundation

@available(iOS 13.4, *)
enum UIScrollType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case discrete
  @available(swift, obsoleted: 3, renamed: "discrete")
  static var Discrete: UIScrollType { get }
  case continuous
  @available(swift, obsoleted: 3, renamed: "continuous")
  static var Continuous: UIScrollType { get }
}
@available(iOS 13.4, *)
struct UIScrollTypeMask : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  typealias RawValue = Int
  typealias Element = UIScrollTypeMask
  typealias ArrayLiteralElement = UIScrollTypeMask
  static var discrete: UIScrollTypeMask { get }
  @available(swift, obsoleted: 3, renamed: "discrete")
  static var Discrete: UIScrollTypeMask { get }
  static var continuous: UIScrollTypeMask { get }
  @available(swift, obsoleted: 3, renamed: "continuous")
  static var Continuous: UIScrollTypeMask { get }
  static var all: UIScrollTypeMask { get }
  @available(swift, obsoleted: 3, renamed: "all")
  static var All: UIScrollTypeMask { get }
}
@available(iOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  var minimumNumberOfTouches: Int
  var maximumNumberOfTouches: Int
  func translation(in view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "translation(in:)")
  func translationInView(_ view: UIView?) -> CGPoint
  func setTranslation(_ translation: CGPoint, in view: UIView?)
  @available(swift, obsoleted: 3, renamed: "setTranslation(_:in:)")
  func setTranslation(_ translation: CGPoint, inView view: UIView?)
  func velocity(in view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "velocity(in:)")
  func velocityInView(_ view: UIView?) -> CGPoint
  @available(iOS 13.4, *)
  var allowedScrollTypesMask: UIScrollTypeMask
  init(target: Any?, action: Selector?)
  convenience init()
  convenience init?(coder: NSCoder)
}
