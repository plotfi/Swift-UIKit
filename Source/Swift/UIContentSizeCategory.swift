@_exported import Foundation

@available(iOS 7.0, *)
struct UIContentSizeCategory : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}

extension UIContentSizeCategory {
  @available(iOS 11.0, tvOS 11.0, *)
  var isAccessibilityCategory: Bool { get }
  @available(iOS 11.0, tvOS 11.0, *)
  static func < (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func <= (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func > (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func >= (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
}
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.unspecified")
let UIContentSizeCategoryUnspecified: UIContentSizeCategory
extension UIContentSizeCategory {
  @available(iOS 10.0, *)
  static let unspecified: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let extraSmall: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let small: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let medium: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let large: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let extraLarge: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let extraExtraLarge: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let extraExtraExtraLarge: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let accessibilityMedium: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let accessibilityLarge: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let accessibilityExtraLarge: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let accessibilityExtraExtraLarge: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let accessibilityExtraExtraExtraLarge: UIContentSizeCategory
  @available(iOS 7.0, *)
  static let didChangeNotification: NSNotification.Name
  @available(iOS 7.0, *)
  static let newValueUserInfoKey: String
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.extraSmall")
let UIContentSizeCategoryExtraSmall: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.small")
let UIContentSizeCategorySmall: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.medium")
let UIContentSizeCategoryMedium: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.large")
let UIContentSizeCategoryLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.extraLarge")
let UIContentSizeCategoryExtraLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.extraExtraLarge")
let UIContentSizeCategoryExtraExtraLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.extraExtraExtraLarge")
let UIContentSizeCategoryExtraExtraExtraLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.accessibilityMedium")
let UIContentSizeCategoryAccessibilityMedium: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.accessibilityLarge")
let UIContentSizeCategoryAccessibilityLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.accessibilityExtraLarge")
let UIContentSizeCategoryAccessibilityExtraLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.accessibilityExtraExtraLarge")
let UIContentSizeCategoryAccessibilityExtraExtraLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.accessibilityExtraExtraExtraLarge")
let UIContentSizeCategoryAccessibilityExtraExtraExtraLarge: UIContentSizeCategory
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIContentSizeCategory.didChangeNotification")
let UIContentSizeCategoryDidChangeNotification: NSNotification.Name
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIContentSizeCategory.newValueUserInfoKey")
let UIContentSizeCategoryNewValueKey: String
@available(iOS 11.0, *)
func __UIContentSizeCategoryIsAccessibilityCategory(_ category: UIContentSizeCategory) -> Bool
@available(iOS 11.0, *)
func __UIContentSizeCategoryCompareToCategory(_ lhs: UIContentSizeCategory, _ rhs: UIContentSizeCategory) -> ComparisonResult
