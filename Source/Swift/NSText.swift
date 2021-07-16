@_exported import Foundation

var __NSTEXT_SHARED_SECTION__: Int32 { get }
@available(iOS 6.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case left
  @available(swift, obsoleted: 3, renamed: "left")
  static var Left: NSTextAlignment { get }
  case center
  @available(swift, obsoleted: 3, renamed: "center")
  static var Center: NSTextAlignment { get }
  case right
  @available(swift, obsoleted: 3, renamed: "right")
  static var Right: NSTextAlignment { get }
  case justified
  @available(swift, obsoleted: 3, renamed: "justified")
  static var Justified: NSTextAlignment { get }
  case natural
  @available(swift, obsoleted: 3, renamed: "natural")
  static var Natural: NSTextAlignment { get }
}
@available(iOS 6.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case natural
  @available(swift, obsoleted: 3, renamed: "natural")
  static var Natural: NSWritingDirection { get }
  case leftToRight
  @available(swift, obsoleted: 3, renamed: "leftToRight")
  static var LeftToRight: NSWritingDirection { get }
  case rightToLeft
  @available(swift, obsoleted: 3, renamed: "rightToLeft")
  static var RightToLeft: NSWritingDirection { get }
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "CTTextAlignment.init(_:)")
func NSTextAlignmentToCTTextAlignment(_ nsTextAlignment: NSTextAlignment) -> CTTextAlignment
extension CTTextAlignment {
  @available(iOS 6.0, *)
  /*not inherited*/ init(_ nsTextAlignment: NSTextAlignment)
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "NSTextAlignment.init(_:)")
func NSTextAlignmentFromCTTextAlignment(_ ctTextAlignment: CTTextAlignment) -> NSTextAlignment
extension NSTextAlignment {
  @available(iOS 6.0, *)
  /*not inherited*/ init(_ ctTextAlignment: CTTextAlignment)
}
