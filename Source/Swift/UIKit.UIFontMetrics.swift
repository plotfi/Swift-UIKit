@_exported import Foundation

@available(iOS 11.0, *)
class UIFontMetrics : NSObject {
  class var `default`: UIFontMetrics { get }
  @available(swift, obsoleted: 3, renamed: "default")
  class var defaultMetrics: UIFontMetrics { get }
  @available(*, unavailable, message: "superseded by import of -[UIFontMetrics initForTextStyle:]")
  convenience init(forTextStyle textStyle: UIFont.TextStyle)
  @available(*, unavailable, renamed: "init(forTextStyle:)", message: "Not available in Swift")
  class func metricsForTextStyle(_ textStyle: UIFont.TextStyle) -> Self
  @available(*, unavailable)
  convenience init()
  init(forTextStyle textStyle: UIFont.TextStyle)
  func scaledFont(for font: UIFont) -> UIFont
  @available(swift, obsoleted: 3, renamed: "scaledFont(for:)")
  func scaledFontForFont(_ font: UIFont) -> UIFont
  func scaledFont(for font: UIFont, maximumPointSize: CGFloat) -> UIFont
  @available(swift, obsoleted: 3, renamed: "scaledFont(for:maximumPointSize:)")
  func scaledFontForFont(_ font: UIFont, maximumPointSize: CGFloat) -> UIFont
  func scaledFont(for font: UIFont, compatibleWith traitCollection: UITraitCollection?) -> UIFont
  @available(swift, obsoleted: 3, renamed: "scaledFont(for:compatibleWith:)")
  func scaledFontForFont(_ font: UIFont, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> UIFont
  func scaledFont(for font: UIFont, maximumPointSize: CGFloat, compatibleWith traitCollection: UITraitCollection?) -> UIFont
  @available(swift, obsoleted: 3, renamed: "scaledFont(for:maximumPointSize:compatibleWith:)")
  func scaledFontForFont(_ font: UIFont, maximumPointSize: CGFloat, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> UIFont
  func scaledValue(for value: CGFloat) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "scaledValue(for:)")
  func scaledValueForValue(_ value: CGFloat) -> CGFloat
  func scaledValue(for value: CGFloat, compatibleWith traitCollection: UITraitCollection?) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "scaledValue(for:compatibleWith:)")
  func scaledValueForValue(_ value: CGFloat, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> CGFloat
}
