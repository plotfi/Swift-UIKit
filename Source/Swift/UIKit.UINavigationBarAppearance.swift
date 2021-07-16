@_exported import Foundation

@available(iOS 13.0, *)
class UINavigationBarAppearance : UIBarAppearance {

  /// Inline Title text attributes. If the font or color are unspecified, appropriate defaults are supplied.
  var titleTextAttributes: [NSAttributedString.Key : Any]

  /// An additional adjustment to the inline title's position.
  var titlePositionAdjustment: UIOffset

  /// Large Title text attributes. If the font or color are unspecified, appropriate defaults are supplied.
  var largeTitleTextAttributes: [NSAttributedString.Key : Any]

  /// The appearance for plain-style bar button items
  @NSCopying var buttonAppearance: UIBarButtonItemAppearance

  /// The appearance for done-style bar button items
  @NSCopying var doneButtonAppearance: UIBarButtonItemAppearance

  /// The appearance for back buttons. Defaults are drawn from buttonAppearance when appropriate.
  @NSCopying var backButtonAppearance: UIBarButtonItemAppearance

  /// The image shown on the leading edge of the back button.
  var backIndicatorImage: UIImage { get }

  /// This image is used to mask content flowing underneath the backIndicatorImage during push & pop transitions
  var backIndicatorTransitionMaskImage: UIImage { get }

  /// Set the backIndicatorImage & backIndicatorTransitionMaskImage images. If either image is nil, then both images will be reset to their default.
  func setBackIndicatorImage(_ backIndicatorImage: UIImage?, transitionMaskImage backIndicatorTransitionMaskImage: UIImage?)

  /// Constructs a new bar appearance, configured with default values and targeting the device idiom.
  convenience init()

  /// Constructs a new bar appearance, targeting the passed-in idiom as a hint. Not all platforms support all available idioms. See the idiom property to determine the resolved idiom.
  init(idiom: UIUserInterfaceIdiom)

  /// Constructs a new bar appearance, copying all relevant properties from the given appearance object. This initializer is useful for migrating configuration between UIBarAppearance subclasses. For example, you can initialize a UINavigationBarAppearance with a UIToolbarAppearance instance, and shared attributes will be identical between the two.
  init(barAppearance: UIBarAppearance)
  init(coder: NSCoder)
}
