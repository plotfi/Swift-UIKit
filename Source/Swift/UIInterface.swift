@_exported import Foundation

enum UIBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIBarStyle { get }
  case black
  @available(swift, obsoleted: 3, renamed: "black")
  static var Black: UIBarStyle { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIBarStyleBlack instead.")
  static var blackOpaque: UIBarStyle { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIBarStyleBlack and set the translucent property to YES instead.")
  case blackTranslucent
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIBarStyleBlack and set the translucent property to YES instead.")
  @available(swift, obsoleted: 3, renamed: "blackTranslucent")
  static var BlackTranslucent: UIBarStyle { get }
}
@available(iOS 8.0, *)
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UIUserInterfaceSizeClass { get }
  case compact
  @available(swift, obsoleted: 3, renamed: "compact")
  static var Compact: UIUserInterfaceSizeClass { get }
  case regular
  @available(swift, obsoleted: 3, renamed: "regular")
  static var Regular: UIUserInterfaceSizeClass { get }
}
@available(iOS 12.0, *)
enum UIUserInterfaceStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UIUserInterfaceStyle { get }
  case light
  @available(swift, obsoleted: 3, renamed: "light")
  static var Light: UIUserInterfaceStyle { get }
  case dark
  @available(swift, obsoleted: 3, renamed: "dark")
  static var Dark: UIUserInterfaceStyle { get }
}
@available(iOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case leftToRight
  @available(swift, obsoleted: 3, renamed: "leftToRight")
  static var LeftToRight: UIUserInterfaceLayoutDirection { get }
  case rightToLeft
  @available(swift, obsoleted: 3, renamed: "rightToLeft")
  static var RightToLeft: UIUserInterfaceLayoutDirection { get }
}
@available(iOS 10.0, *)
enum UITraitEnvironmentLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UITraitEnvironmentLayoutDirection { get }
  case leftToRight
  @available(swift, obsoleted: 3, renamed: "leftToRight")
  static var LeftToRight: UITraitEnvironmentLayoutDirection { get }
  case rightToLeft
  @available(swift, obsoleted: 3, renamed: "rightToLeft")
  static var RightToLeft: UITraitEnvironmentLayoutDirection { get }
}
@available(iOS 10.0, *)
enum UIDisplayGamut : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UIDisplayGamut { get }
  case SRGB
  case P3
}
@available(iOS 13.0, *)
enum UIAccessibilityContrast : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UIAccessibilityContrast { get }
  case normal
  @available(swift, obsoleted: 3, renamed: "normal")
  static var Normal: UIAccessibilityContrast { get }
  case high
  @available(swift, obsoleted: 3, renamed: "high")
  static var High: UIAccessibilityContrast { get }
}
@available(iOS 13.0, *)
enum UILegibilityWeight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UILegibilityWeight { get }
  case regular
  @available(swift, obsoleted: 3, renamed: "regular")
  static var Regular: UILegibilityWeight { get }
  case bold
  @available(swift, obsoleted: 3, renamed: "bold")
  static var Bold: UILegibilityWeight { get }
}
@available(iOS 13.0, *)
enum UIUserInterfaceLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UIUserInterfaceLevel { get }
  case base
  @available(swift, obsoleted: 3, renamed: "base")
  static var Base: UIUserInterfaceLevel { get }
  case elevated
  @available(swift, obsoleted: 3, renamed: "elevated")
  static var Elevated: UIUserInterfaceLevel { get }
}
@available(iOS 14.0, *)
enum UIUserInterfaceActiveAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UIUserInterfaceActiveAppearance { get }
  case inactive
  @available(swift, obsoleted: 3, renamed: "inactive")
  static var Inactive: UIUserInterfaceActiveAppearance { get }
  case active
  @available(swift, obsoleted: 3, renamed: "active")
  static var Active: UIUserInterfaceActiveAppearance { get }
}
extension UIColor {
  @available(iOS 7.0, *)
  class var systemRed: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemRed")
  class var systemRedColor: UIColor { get }
  @available(iOS 7.0, *)
  class var systemGreen: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGreen")
  class var systemGreenColor: UIColor { get }
  @available(iOS 7.0, *)
  class var systemBlue: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemBlue")
  class var systemBlueColor: UIColor { get }
  @available(iOS 7.0, *)
  class var systemOrange: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemOrange")
  class var systemOrangeColor: UIColor { get }
  @available(iOS 7.0, *)
  class var systemYellow: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemYellow")
  class var systemYellowColor: UIColor { get }
  @available(iOS 7.0, *)
  class var systemPink: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemPink")
  class var systemPinkColor: UIColor { get }
  @available(iOS 9.0, *)
  class var systemPurple: UIColor { get }
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "systemPurple")
  class var systemPurpleColor: UIColor { get }
  @available(iOS 7.0, *)
  class var systemTeal: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemTeal")
  class var systemTealColor: UIColor { get }
  @available(iOS 13.0, *)
  class var systemIndigo: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemIndigo")
  class var systemIndigoColor: UIColor { get }
  @available(iOS 7.0, *)
  class var systemGray: UIColor { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGray")
  class var systemGrayColor: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray2: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGray2")
  class var systemGray2Color: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray3: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGray3")
  class var systemGray3Color: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray4: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGray4")
  class var systemGray4Color: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray5: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGray5")
  class var systemGray5Color: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray6: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGray6")
  class var systemGray6Color: UIColor { get }
  @available(iOS 13.0, *)
  class var label: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "label")
  class var labelColor: UIColor { get }
  @available(iOS 13.0, *)
  class var secondaryLabel: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "secondaryLabel")
  class var secondaryLabelColor: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiaryLabel: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "tertiaryLabel")
  class var tertiaryLabelColor: UIColor { get }
  @available(iOS 13.0, *)
  class var quaternaryLabel: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "quaternaryLabel")
  class var quaternaryLabelColor: UIColor { get }
  @available(iOS 13.0, *)
  class var link: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "link")
  class var linkColor: UIColor { get }
  @available(iOS 13.0, *)
  class var placeholderText: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "placeholderText")
  class var placeholderTextColor: UIColor { get }
  @available(iOS 13.0, *)
  class var separator: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "separator")
  class var separatorColor: UIColor { get }
  @available(iOS 13.0, *)
  class var opaqueSeparator: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "opaqueSeparator")
  class var opaqueSeparatorColor: UIColor { get }
  @available(iOS 13.0, *)
  class var systemBackground: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemBackground")
  class var systemBackgroundColor: UIColor { get }
  @available(iOS 13.0, *)
  class var secondarySystemBackground: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "secondarySystemBackground")
  class var secondarySystemBackgroundColor: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiarySystemBackground: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "tertiarySystemBackground")
  class var tertiarySystemBackgroundColor: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGroupedBackground: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemGroupedBackground")
  class var systemGroupedBackgroundColor: UIColor { get }
  @available(iOS 13.0, *)
  class var secondarySystemGroupedBackground: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "secondarySystemGroupedBackground")
  class var secondarySystemGroupedBackgroundColor: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiarySystemGroupedBackground: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "tertiarySystemGroupedBackground")
  class var tertiarySystemGroupedBackgroundColor: UIColor { get }
  @available(iOS 13.0, *)
  class var systemFill: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "systemFill")
  class var systemFillColor: UIColor { get }
  @available(iOS 13.0, *)
  class var secondarySystemFill: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "secondarySystemFill")
  class var secondarySystemFillColor: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiarySystemFill: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "tertiarySystemFill")
  class var tertiarySystemFillColor: UIColor { get }
  @available(iOS 13.0, *)
  class var quaternarySystemFill: UIColor { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "quaternarySystemFill")
  class var quaternarySystemFillColor: UIColor { get }
  class var lightText: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "lightText")
  class var lightTextColor: UIColor { get }
  class var darkText: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "darkText")
  class var darkTextColor: UIColor { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0)
  class var groupTableViewBackground: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "groupTableViewBackground")
  @available(iOS, introduced: 2.0, deprecated: 13.0)
  class var groupTableViewBackgroundColor: UIColor { get }
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class var viewFlipsideBackground: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "viewFlipsideBackground")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class var viewFlipsideBackgroundColor: UIColor { get }
  @available(iOS, unavailable, introduced: 3.2, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class var scrollViewTexturedBackground: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "scrollViewTexturedBackground")
  @available(iOS, unavailable, introduced: 3.2, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class var scrollViewTexturedBackgroundColor: UIColor { get }
  @available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class var underPageBackground: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "underPageBackground")
  @available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class var underPageBackgroundColor: UIColor { get }
}
extension UIFont {
  class var labelFontSize: CGFloat { get }
  class var buttonFontSize: CGFloat { get }
  class var smallSystemFontSize: CGFloat { get }
  class var systemFontSize: CGFloat { get }
  @available(iOS, unavailable)
  class var defaultFontSize: CGFloat { get }
  @available(iOS, unavailable)
  class var systemMinimumFontSize: CGFloat { get }
}
