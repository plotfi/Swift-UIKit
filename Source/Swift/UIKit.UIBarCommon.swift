@_exported import Foundation

enum UIBarMetrics : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIBarMetrics { get }
  case compact
  @available(swift, obsoleted: 3, renamed: "compact")
  static var Compact: UIBarMetrics { get }
  case defaultPrompt
  @available(swift, obsoleted: 3, renamed: "defaultPrompt")
  static var DefaultPrompt: UIBarMetrics { get }
  case compactPrompt
  @available(swift, obsoleted: 3, renamed: "compactPrompt")
  static var CompactPrompt: UIBarMetrics { get }
  @available(iOS, introduced: 5.0, deprecated: 8.0, message: "Use UIBarMetricsCompact instead")
  static var landscapePhone: UIBarMetrics { get }
  @available(iOS, introduced: 7.0, deprecated: 8.0, message: "Use UIBarMetricsCompactPrompt")
  static var landscapePhonePrompt: UIBarMetrics { get }
}
@available(iOS 7.0, *)
enum UIBarPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case any
  @available(swift, obsoleted: 3, renamed: "any")
  static var `Any`: UIBarPosition { get }
  case bottom
  @available(swift, obsoleted: 3, renamed: "bottom")
  static var Bottom: UIBarPosition { get }
  case top
  @available(swift, obsoleted: 3, renamed: "top")
  static var Top: UIBarPosition { get }
  case topAttached
  @available(swift, obsoleted: 3, renamed: "topAttached")
  static var TopAttached: UIBarPosition { get }
}
protocol UIBarPositioning : NSObjectProtocol {
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UIBarPositioningDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func position(for bar: UIBarPositioning) -> UIBarPosition
  @available(swift, obsoleted: 3, renamed: "position(for:)")
  optional func positionForBar(_ bar: UIBarPositioning) -> UIBarPosition
}
