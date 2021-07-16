@_exported import Foundation

@available(iOS 10.0, *)
enum UITimingCurveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case builtin
  @available(swift, obsoleted: 3, renamed: "builtin")
  static var Builtin: UITimingCurveType { get }
  case cubic
  @available(swift, obsoleted: 3, renamed: "cubic")
  static var Cubic: UITimingCurveType { get }
  case spring
  @available(swift, obsoleted: 3, renamed: "spring")
  static var Spring: UITimingCurveType { get }
  case composed
  @available(swift, obsoleted: 3, renamed: "composed")
  static var Composed: UITimingCurveType { get }
}
protocol UITimingCurveProvider : NSCoding, NSCopying {
  @available(iOS 10.0, *)
  var timingCurveType: UITimingCurveType { get }
  @available(iOS 10.0, *)
  var cubicTimingParameters: UICubicTimingParameters? { get }
  @available(iOS 10.0, *)
  var springTimingParameters: UISpringTimingParameters? { get }
}
