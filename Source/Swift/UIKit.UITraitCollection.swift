@_exported import Foundation


/** A trait collection encapsulates the system traits of an interface's environment. */
@available(iOS 8.0, *)
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder: NSCoder)
  func containsTraits(in trait: UITraitCollection?) -> Bool
  @available(swift, obsoleted: 3, renamed: "containsTraits(in:)")
  func containsTraitsInCollection(_ trait: UITraitCollection?) -> Bool

  /** Returns a trait collection by merging the traits in `traitCollections`. The last trait along any given
   axis (e.g. interface usage) will supersede any others. */
  /*not inherited*/ init(traitsFrom traitCollections: [UITraitCollection])

  /** Returns a trait collection by merging the traits in `traitCollections`. The last trait along any given
   axis (e.g. interface usage) will supersede any others. */
  @available(swift, obsoleted: 3, renamed: "init(traitsFrom:)")
  /*not inherited*/ init(traitsFromCollections traitCollections: [UITraitCollection])

  /** Returns a trait collection by merging the traits in `traitCollections`. The last trait along any given
   axis (e.g. interface usage) will supersede any others. */
  @available(*, unavailable, renamed: "init(traitsFrom:)", message: "Not available in Swift")
  class func traitCollectionWithTraitsFromCollections(_ traitCollections: [UITraitCollection]) -> UITraitCollection
  /*not inherited*/ init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  @available(*, unavailable, renamed: "init(userInterfaceIdiom:)", message: "Not available in Swift")
  class func traitCollectionWithUserInterfaceIdiom(_ idiom: UIUserInterfaceIdiom) -> UITraitCollection
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(iOS 12.0, *)
  /*not inherited*/ init(userInterfaceStyle: UIUserInterfaceStyle)
  @available(iOS 12.0, *)
  @available(*, unavailable, renamed: "init(userInterfaceStyle:)", message: "Not available in Swift")
  class func traitCollectionWithUserInterfaceStyle(_ userInterfaceStyle: UIUserInterfaceStyle) -> UITraitCollection
  @available(iOS 12.0, *)
  var userInterfaceStyle: UIUserInterfaceStyle { get }
  @available(iOS 10.0, *)
  /*not inherited*/ init(layoutDirection: UITraitEnvironmentLayoutDirection)
  @available(iOS 10.0, *)
  @available(*, unavailable, renamed: "init(layoutDirection:)", message: "Not available in Swift")
  class func traitCollectionWithLayoutDirection(_ layoutDirection: UITraitEnvironmentLayoutDirection) -> UITraitCollection
  @available(iOS 10.0, *)
  var layoutDirection: UITraitEnvironmentLayoutDirection { get }
  /*not inherited*/ init(displayScale scale: CGFloat)
  @available(*, unavailable, renamed: "init(displayScale:)", message: "Not available in Swift")
  class func traitCollectionWithDisplayScale(_ scale: CGFloat) -> UITraitCollection
  var displayScale: CGFloat { get }
  /*not inherited*/ init(horizontalSizeClass: UIUserInterfaceSizeClass)
  @available(*, unavailable, renamed: "init(horizontalSizeClass:)", message: "Not available in Swift")
  class func traitCollectionWithHorizontalSizeClass(_ horizontalSizeClass: UIUserInterfaceSizeClass) -> UITraitCollection
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
  /*not inherited*/ init(verticalSizeClass: UIUserInterfaceSizeClass)
  @available(*, unavailable, renamed: "init(verticalSizeClass:)", message: "Not available in Swift")
  class func traitCollectionWithVerticalSizeClass(_ verticalSizeClass: UIUserInterfaceSizeClass) -> UITraitCollection
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
  @available(iOS 9.0, *)
  /*not inherited*/ init(forceTouchCapability capability: UIForceTouchCapability)
  @available(iOS 9.0, *)
  @available(*, unavailable, renamed: "init(forceTouchCapability:)", message: "Not available in Swift")
  class func traitCollectionWithForceTouchCapability(_ capability: UIForceTouchCapability) -> UITraitCollection
  @available(iOS 9.0, *)
  var forceTouchCapability: UIForceTouchCapability { get }
  @available(iOS 10.0, *)
  /*not inherited*/ init(preferredContentSizeCategory: UIContentSizeCategory)
  @available(iOS 10.0, *)
  @available(*, unavailable, renamed: "init(preferredContentSizeCategory:)", message: "Not available in Swift")
  class func traitCollectionWithPreferredContentSizeCategory(_ preferredContentSizeCategory: UIContentSizeCategory) -> UITraitCollection
  @available(iOS 10.0, *)
  var preferredContentSizeCategory: UIContentSizeCategory { get }
  @available(iOS 10.0, *)
  /*not inherited*/ init(displayGamut: UIDisplayGamut)
  @available(iOS 10.0, *)
  @available(*, unavailable, renamed: "init(displayGamut:)", message: "Not available in Swift")
  class func traitCollectionWithDisplayGamut(_ displayGamut: UIDisplayGamut) -> UITraitCollection
  @available(iOS 10.0, *)
  var displayGamut: UIDisplayGamut { get }
  @available(iOS 13.0, *)
  /*not inherited*/ init(accessibilityContrast: UIAccessibilityContrast)
  @available(iOS 13.0, *)
  @available(*, unavailable, renamed: "init(accessibilityContrast:)", message: "Not available in Swift")
  class func traitCollectionWithAccessibilityContrast(_ accessibilityContrast: UIAccessibilityContrast) -> UITraitCollection
  @available(iOS 13.0, *)
  var accessibilityContrast: UIAccessibilityContrast { get }
  @available(iOS 13.0, *)
  /*not inherited*/ init(userInterfaceLevel: UIUserInterfaceLevel)
  @available(iOS 13.0, *)
  @available(*, unavailable, renamed: "init(userInterfaceLevel:)", message: "Not available in Swift")
  class func traitCollectionWithUserInterfaceLevel(_ userInterfaceLevel: UIUserInterfaceLevel) -> UITraitCollection
  @available(iOS 13.0, *)
  var userInterfaceLevel: UIUserInterfaceLevel { get }
  @available(iOS 13.0, *)
  /*not inherited*/ init(legibilityWeight: UILegibilityWeight)
  @available(iOS 13.0, *)
  @available(*, unavailable, renamed: "init(legibilityWeight:)", message: "Not available in Swift")
  class func traitCollectionWithLegibilityWeight(_ legibilityWeight: UILegibilityWeight) -> UITraitCollection
  @available(iOS 13.0, *)
  var legibilityWeight: UILegibilityWeight { get }
  @available(iOS 14.0, *)
  /*not inherited*/ init(activeAppearance userInterfaceActiveAppearance: UIUserInterfaceActiveAppearance)
  @available(iOS 14.0, *)
  @available(*, unavailable, renamed: "init(activeAppearance:)", message: "Not available in Swift")
  class func traitCollectionWithActiveAppearance(_ userInterfaceActiveAppearance: UIUserInterfaceActiveAppearance) -> UITraitCollection
  @available(iOS 14.0, *)
  var activeAppearance: UIUserInterfaceActiveAppearance { get }
  @available(iOS 8.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 8.0, *)
  func encode(with coder: NSCoder)
}

/** Trait environments expose a trait collection that describes their environment. */
protocol UITraitEnvironment : NSObjectProtocol {
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /** To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
}
extension UITraitCollection {
  @available(iOS 13.0, *)
  class var current: UITraitCollection
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "current")
  class var currentTraitCollection: UITraitCollection
  @available(iOS 13.0, *)
  func performAsCurrent(_ actions: () -> Void)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "performAsCurrent(_:)")
  func performAsCurrentTraitCollection(_ actions: () -> Void)
}
extension UITraitCollection {
  @available(iOS 13.0, *)
  func hasDifferentColorAppearance(comparedTo traitCollection: UITraitCollection?) -> Bool
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "hasDifferentColorAppearance(comparedTo:)")
  func hasDifferentColorAppearanceComparedToTraitCollection(_ traitCollection: UITraitCollection?) -> Bool
}
extension UITraitCollection {
  @available(iOS 13.0, *)
  var imageConfiguration: UIImage.Configuration { get }
}
