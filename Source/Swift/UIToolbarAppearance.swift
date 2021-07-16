@_exported import Foundation

@available(iOS 13.0, *)
class UIToolbarAppearance : UIBarAppearance {

  /// The appearance for plain-style bar button items
  @NSCopying var buttonAppearance: UIBarButtonItemAppearance

  /// The appearance for done-style bar button items
  @NSCopying var doneButtonAppearance: UIBarButtonItemAppearance

  /// Constructs a new bar appearance, configured with default values and targeting the device idiom.
  convenience init()

  /// Constructs a new bar appearance, targeting the passed-in idiom as a hint. Not all platforms support all available idioms. See the idiom property to determine the resolved idiom.
  init(idiom: UIUserInterfaceIdiom)

  /// Constructs a new bar appearance, copying all relevant properties from the given appearance object. This initializer is useful for migrating configuration between UIBarAppearance subclasses. For example, you can initialize a UINavigationBarAppearance with a UIToolbarAppearance instance, and shared attributes will be identical between the two.
  init(barAppearance: UIBarAppearance)
  init(coder: NSCoder)
}
