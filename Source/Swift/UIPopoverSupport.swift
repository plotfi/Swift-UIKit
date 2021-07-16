@_exported import Foundation

struct UIPopoverArrowDirection : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIPopoverArrowDirection
  typealias ArrayLiteralElement = UIPopoverArrowDirection
  static var up: UIPopoverArrowDirection { get }
  @available(swift, obsoleted: 3, renamed: "up")
  static var Up: UIPopoverArrowDirection { get }
  static var down: UIPopoverArrowDirection { get }
  @available(swift, obsoleted: 3, renamed: "down")
  static var Down: UIPopoverArrowDirection { get }
  static var left: UIPopoverArrowDirection { get }
  @available(swift, obsoleted: 3, renamed: "left")
  static var Left: UIPopoverArrowDirection { get }
  static var right: UIPopoverArrowDirection { get }
  @available(swift, obsoleted: 3, renamed: "right")
  static var Right: UIPopoverArrowDirection { get }
  static var any: UIPopoverArrowDirection { get }
  @available(swift, obsoleted: 3, renamed: "any")
  static var `Any`: UIPopoverArrowDirection { get }
  static var unknown: UIPopoverArrowDirection { get }
  @available(swift, obsoleted: 3, renamed: "unknown")
  static var Unknown: UIPopoverArrowDirection { get }
}
extension UIViewController {
  @available(iOS, introduced: 3.2, deprecated: 13.0)
  var isModalInPopover: Bool
  @available(swift, obsoleted: 3, renamed: "isModalInPopover")
  @available(iOS, introduced: 3.2, deprecated: 13.0)
  var modalInPopover: Bool
  @available(iOS, unavailable, introduced: 3.2, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var contentSizeForViewInPopover: CGSize
}
