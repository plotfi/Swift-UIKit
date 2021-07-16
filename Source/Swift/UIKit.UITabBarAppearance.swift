@_exported import Foundation

@available(iOS 13.0, *)
class UITabBarItemStateAppearance : NSObject {
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self

  /// Text attributes to be used for rendering title text. If the font or color are unspecified, appropriate defaults are supplied.
  var titleTextAttributes: [NSAttributedString.Key : Any]

  /// An offset to apply to the UITabBarItem's title position
  var titlePositionAdjustment: UIOffset

  /// The color to use for item icons. If not specified, a suitable color will be derived.
  @NSCopying var iconColor: UIColor?

  /// An offset to apply to the badge's position
  var badgePositionAdjustment: UIOffset

  /// The color to use for the badge background
  @NSCopying var badgeBackgroundColor: UIColor?

  /// Text attributes to be used for rendering badge text. If the font and color are unspecified, appropriate defaults are supplied.
  var badgeTextAttributes: [NSAttributedString.Key : Any]

  /// An offset to apply to the badge's title position
  var badgeTitlePositionAdjustment: UIOffset
}
@available(swift, obsoleted: 3, renamed: "UITabBarItemAppearance.Style")
typealias UITabBarItemAppearanceStyle = UITabBarItemAppearance.Style
extension UITabBarItemAppearance {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case stacked
    @available(swift, obsoleted: 3, renamed: "stacked")
    static var Stacked: UITabBarItemAppearance.Style { get }
    case inline
    @available(swift, obsoleted: 3, renamed: "inline")
    static var Inline: UITabBarItemAppearance.Style { get }
    case compactInline
    @available(swift, obsoleted: 3, renamed: "compactInline")
    static var CompactInline: UITabBarItemAppearance.Style { get }
  }
}
@available(iOS 13.0, *)
class UITabBarItemAppearance : NSObject, NSCopying, NSSecureCoding {

  /// Construct an appearance with default values for the stacked layout.
  convenience init()

  /// Construct an appearance with default values for the given layout.
  init(style: UITabBarItemAppearance.Style)
  init(coder: NSCoder)
  func copy() -> Self

  /// Reset this appearance to that of the given layout.
  func configureWithDefault(for style: UITabBarItemAppearance.Style)

  /// Reset this appearance to that of the given layout.
  @available(swift, obsoleted: 3, renamed: "configureWithDefault(for:)")
  func configureWithDefaultForStyle(_ style: UITabBarItemAppearance.Style)

  /// The appearance when the tab bar item is in the normal state
  var normal: UITabBarItemStateAppearance { get }

  /// The appearance when the tab bar item is in the selected state
  var selected: UITabBarItemStateAppearance { get }

  /// The appearance when the tab bar item is in the disabled state
  var disabled: UITabBarItemStateAppearance { get }

  /// The appearance when the tab bar item is in the focused state
  var focused: UITabBarItemStateAppearance { get }
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
}
@available(iOS 13.0, *)
class UITabBarAppearance : UIBarAppearance {

  /// The appearance for the stacked tab bar item layout
  @NSCopying var stackedLayoutAppearance: UITabBarItemAppearance

  /// The appearance for the inline tab bar item layout
  @NSCopying var inlineLayoutAppearance: UITabBarItemAppearance

  /// The appearance for the compact inline tab bar item layout
  @NSCopying var compactInlineLayoutAppearance: UITabBarItemAppearance

  /// A color to use for the selectionIndicator, its specific behavior depends on the value of selectionIndicatorImage. If selectionIndicatorImage is nil, then the selectionIndicatorTintColor is used to color the UITabBar's default selection indicator; a nil or clearColor selectionIndicatorTintColor will result in no indicator. If selectionIndicatorImage is a template image, then the selectionIndicatorTintColor is used to tint the image; a nil or clearColor selectionIndicatorTintColor will also result in no indicator. If the selectionIndicatorImage is not a template image, then it will be rendered without respect to the value of selectionIndicatorTintColor.
  @NSCopying var selectionIndicatorTintColor: UIColor?

  /// An image that is rendered behind the selected UITabBarItem and above the tab bar's background. Modified by selectionIndicatorTintColor when appropriate.
  var selectionIndicatorImage: UIImage?

  /// Determines how items in the tab bar lay out in the stacked item layout
  var stackedItemPositioning: UITabBar.ItemPositioning
  var stackedItemWidth: CGFloat
  var stackedItemSpacing: CGFloat

  /// Constructs a new bar appearance, configured with default values and targeting the device idiom.
  convenience init()

  /// Constructs a new bar appearance, targeting the passed-in idiom as a hint. Not all platforms support all available idioms. See the idiom property to determine the resolved idiom.
  init(idiom: UIUserInterfaceIdiom)

  /// Constructs a new bar appearance, copying all relevant properties from the given appearance object. This initializer is useful for migrating configuration between UIBarAppearance subclasses. For example, you can initialize a UINavigationBarAppearance with a UIToolbarAppearance instance, and shared attributes will be identical between the two.
  init(barAppearance: UIBarAppearance)
  init(coder: NSCoder)
}
