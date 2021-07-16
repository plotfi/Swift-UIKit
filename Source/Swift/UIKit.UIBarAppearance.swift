@_exported import Foundation

@available(iOS 13.0, *)
class UIBarAppearance : NSObject, NSCopying, NSSecureCoding {

  /// Constructs a new bar appearance, configured with default values and targeting the device idiom.
  convenience init()

  /// Constructs a new bar appearance, targeting the passed-in idiom as a hint. Not all platforms support all available idioms. See the idiom property to determine the resolved idiom.
  init(idiom: UIUserInterfaceIdiom)

  /// The idiom that this appearance object targets.
  var idiom: UIUserInterfaceIdiom { get }

  /// Constructs a new bar appearance, copying all relevant properties from the given appearance object. This initializer is useful for migrating configuration between UIBarAppearance subclasses. For example, you can initialize a UINavigationBarAppearance with a UIToolbarAppearance instance, and shared attributes will be identical between the two.
  init(barAppearance: UIBarAppearance)
  init(coder: NSCoder)
  func copy() -> Self

  /// Reset background and shadow properties to their defaults.
  func configureWithDefaultBackground()

  /// Reset background and shadow properties to display theme-appropriate opaque colors.
  func configureWithOpaqueBackground()

  /// Reset background and shadow properties to be transparent.
  func configureWithTransparentBackground()

  /// A specific blur effect to use for the bar background. This effect is composited first when constructing the bar's background.
  @NSCopying var backgroundEffect: UIBlurEffect?

  /// A color to use for the bar background. This color is composited over backgroundEffects.
  @NSCopying var backgroundColor: UIColor?

  /// An image to use for the bar background. This image is composited over the backgroundColor, and resized per the backgroundImageContentMode.
  var backgroundImage: UIImage?

  /// The content mode to use when rendering the backgroundImage. Defaults to UIViewContentModeScaleToFill. UIViewContentModeRedraw will be reinterpreted as UIViewContentModeScaleToFill.
  var backgroundImageContentMode: UIView.ContentMode

  /// A color to use for the shadow. Its specific behavior depends on the value of shadowImage. If shadowImage is nil, then the shadowColor is used to color the bar's default shadow; a nil or clearColor shadowColor will result in no shadow. If shadowImage is a template image, then the shadowColor is used to tint the image; a nil or clearColor shadowColor will also result in no shadow. If the shadowImage is not a template image, then it will be rendered regardless of the value of shadowColor.
  @NSCopying var shadowColor: UIColor?

  /// Use an image for the shadow. See shadowColor for how they interact.
  var shadowImage: UIImage?
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
}
