@_exported import Foundation

@available(iOS 14.0, *)
enum __UIListContentTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case natural
  @available(swift, obsoleted: 3, renamed: "natural")
  static var Natural: __UIListContentTextAlignment { get }
  case center
  @available(swift, obsoleted: 3, renamed: "center")
  static var Center: __UIListContentTextAlignment { get }
  case justified
  @available(swift, obsoleted: 3, renamed: "justified")
  static var Justified: __UIListContentTextAlignment { get }
}
@available(iOS 14.0, *)
enum __UIListContentTextTransform : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: __UIListContentTextTransform { get }
  case uppercase
  @available(swift, obsoleted: 3, renamed: "uppercase")
  static var Uppercase: __UIListContentTextTransform { get }
  case lowercase
  @available(swift, obsoleted: 3, renamed: "lowercase")
  static var Lowercase: __UIListContentTextTransform { get }
  case capitalized
  @available(swift, obsoleted: 3, renamed: "capitalized")
  static var Capitalized: __UIListContentTextTransform { get }
}
@available(iOS 14.0, *)
class __UIListContentTextProperties : NSObject, NSCopying, NSSecureCoding {

  /// The font used for the text.
  var font: UIFont

  /// The color of the text.
  var color: UIColor

  /// Optional color transformer that is used to resolve the color. A nil value means the `color` is used as-is.
  var colorTransformer: __UIConfigurationColorTransformer?

  /// Returns the resolved color, based on the `color` and `colorTransformer`.
  func resolvedColor() -> UIColor

  /// The alignment for the text.
  var alignment: __UIListContentTextAlignment

  /// The line break mode to use for the text.
  var lineBreakMode: NSLineBreakMode

  /// The maximum number of lines for the text. 0 indicates the number of lines is unlimited.
  var numberOfLines: Int

  /// Whether the font size of the text is automatically adjusted when necessary to fit in the available width.
  var adjustsFontSizeToFitWidth: Bool

  /// When `adjustsFontSizeToFitWidth` is enabled, the smallest multiplier for the font size used to make the text fit.
  var minimumScaleFactor: CGFloat

  /// Whether the text is tightened before truncating.
  var allowsDefaultTighteningForTruncation: Bool

  /// Whether the font is automatically updated when the content size category changes.
  var adjustsFontForContentSizeCategory: Bool

  /// A transform that is applied to the text before it is displayed.
  var transform: __UIListContentTextTransform
  init()
  @available(iOS 14.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 14.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
