@_exported import Foundation

@available(iOS 13.0, *)
class UIBarButtonItemStateAppearance : NSObject {
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self

  /// Text attributes to be used for rendering title text. If the font or color are unspecified, appropriate defaults are supplied.
  var titleTextAttributes: [NSAttributedString.Key : Any]

  /// An offset to apply to the button's title position
  var titlePositionAdjustment: UIOffset

  /// A background image to display around the button
  var backgroundImage: UIImage?

  /// An offset to apply to the backgroundImage.
  var backgroundImagePositionAdjustment: UIOffset
}
@available(iOS 13.0, *)
class UIBarButtonItemAppearance : NSObject, NSCopying, NSSecureCoding {

  /// Construct an appearance for the UIBarButtonItemStylePlain style.
  convenience init()

  /// Construct an appearance with default values for the given style.
  init(style: UIBarButtonItem.Style)
  init(coder: NSCoder)
  func copy() -> Self

  /// Reset this appearance to that of a given style.
  func configureWithDefault(for style: UIBarButtonItem.Style)

  /// Reset this appearance to that of a given style.
  @available(swift, obsoleted: 3, renamed: "configureWithDefault(for:)")
  func configureWithDefaultForStyle(_ style: UIBarButtonItem.Style)

  /// The appearance when the bar button item is in the normal control state.
  var normal: UIBarButtonItemStateAppearance { get }

  /// The appearance when the bar button item is in the highlighted control state. If unspecified, then synthesized from the normal state.
  var highlighted: UIBarButtonItemStateAppearance { get }

  /// The appearance when the bar button item is in the disabled control state. If unspecified, then synthesized from the normal state.
  var disabled: UIBarButtonItemStateAppearance { get }

  /// The appearance when the bar button item is in the focused control state. If unspecified, then synthesized from the highlighted state.
  var focused: UIBarButtonItemStateAppearance { get }
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
}
