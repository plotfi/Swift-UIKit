@_exported import Foundation

@available(iOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(iOS 7.0, *)
  class func preferredFont(forTextStyle style: UIFont.TextStyle) -> UIFont
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "preferredFont(forTextStyle:)")
  class func preferredFontForTextStyle(_ style: UIFont.TextStyle) -> UIFont
  @available(iOS 10.0, *)
  class func preferredFont(forTextStyle style: UIFont.TextStyle, compatibleWith traitCollection: UITraitCollection?) -> UIFont
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "preferredFont(forTextStyle:compatibleWith:)")
  class func preferredFontForTextStyle(_ style: UIFont.TextStyle, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  @available(*, unavailable, renamed: "init(name:size:)", message: "Not available in Swift")
  class func fontWithName(_ fontName: String, size fontSize: CGFloat) -> UIFont?
  class var familyNames: [String] { get }
  class func fontNames(forFamilyName familyName: String) -> [String]
  @available(swift, obsoleted: 3, renamed: "fontNames(forFamilyName:)")
  class func fontNamesForFamilyName(_ familyName: String) -> [String]
  class func systemFont(ofSize fontSize: CGFloat) -> UIFont
  @available(swift, obsoleted: 3, renamed: "systemFont(ofSize:)")
  class func systemFontOfSize(_ fontSize: CGFloat) -> UIFont
  class func boldSystemFont(ofSize fontSize: CGFloat) -> UIFont
  @available(swift, obsoleted: 3, renamed: "boldSystemFont(ofSize:)")
  class func boldSystemFontOfSize(_ fontSize: CGFloat) -> UIFont
  class func italicSystemFont(ofSize fontSize: CGFloat) -> UIFont
  @available(swift, obsoleted: 3, renamed: "italicSystemFont(ofSize:)")
  class func italicSystemFontOfSize(_ fontSize: CGFloat) -> UIFont
  @available(iOS 8.2, *)
  class func systemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 3, renamed: "systemFont(ofSize:weight:)")
  class func systemFontOfSize(_ fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  @available(iOS 9.0, *)
  class func monospacedDigitSystemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "monospacedDigitSystemFont(ofSize:weight:)")
  class func monospacedDigitSystemFontOfSize(_ fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  @available(iOS 13.0, *)
  class func monospacedSystemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "monospacedSystemFont(ofSize:weight:)")
  class func monospacedSystemFontOfSize(_ fontSize: CGFloat, weight: UIFont.Weight) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(iOS 4.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func withSize(_ fontSize: CGFloat) -> UIFont
  @available(swift, obsoleted: 3, renamed: "withSize(_:)")
  func fontWithSize(_ fontSize: CGFloat) -> UIFont
  @available(iOS 7.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(iOS 7.0, *)
  @available(*, unavailable, renamed: "init(descriptor:size:)", message: "Not available in Swift")
  class func fontWithDescriptor(_ descriptor: UIFontDescriptor, size pointSize: CGFloat) -> UIFont
  @available(iOS 7.0, *)
  var fontDescriptor: UIFontDescriptor { get }
  init()
  @available(iOS 2.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
