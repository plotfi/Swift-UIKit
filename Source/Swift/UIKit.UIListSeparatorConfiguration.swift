@_exported import Foundation

enum __UIListSeparatorVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// UICollectionView list sections will resolve this to an appropriate value.
  case automatic

  /// UICollectionView list sections will resolve this to an appropriate value.
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: __UIListSeparatorVisibility { get }

  /// UICollectionView list sections will resolve this to an appropriate value.
  case visible

  /// UICollectionView list sections will resolve this to an appropriate value.
  @available(swift, obsoleted: 3, renamed: "visible")
  static var Visible: __UIListSeparatorVisibility { get }

  /// UICollectionView list sections will resolve this to an appropriate value.
  case hidden

  /// UICollectionView list sections will resolve this to an appropriate value.
  @available(swift, obsoleted: 3, renamed: "hidden")
  static var Hidden: __UIListSeparatorVisibility { get }
}

/// Use the values from the edges in this constant to indicate to the consumer of a UIListSeparatorConfiguration that the value for that
/// edge should be replaced with an appropriate inset.
@available(iOS 14.5, *)
let __UIListSeparatorAutomaticInsets: NSDirectionalEdgeInsets

/// This configuration allows for fine grained control of separator appearance in a UICollectionView List section.
/// @see UICollectionLayoutListConfiguration.separatorConfiguration
@available(iOS 14.5, *)
class __UIListSeparatorConfiguration : NSObject, NSCopying, NSSecureCoding {
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self

  /// Initializes a list separator configuration with the appropriate defaults for the passed in list appearance.
  /// @param listAppearance The appearance of the list consuming this separator configuration
  init(listAppearance: __UICollectionLayoutListAppearance)

  /// The visibility of the top separator for the item that this configuration is applied to.
  var topSeparatorVisibility: __UIListSeparatorVisibility

  /// The visibility of the bottom separator for the item that this configuration is applied to.
  var bottomSeparatorVisibility: __UIListSeparatorVisibility

  /// Insets to apply to the top separator of the item that this configuration is applied to. Defaults to UIListSeparatorAutomaticInsets.
  var topSeparatorInsets: NSDirectionalEdgeInsets

  /// Insets to apply to the bottom separator of the item that this configuration is applied to. Defaults to UIListSeparatorAutomaticInsets.
  var bottomSeparatorInsets: NSDirectionalEdgeInsets

  /// The color to use for the separators for the item this configuration is applied to.
  var color: UIColor

  /// The color to use for the separators for the item this configuration is applied to, when the item is in a multiple selection group.
  var multipleSelectionColor: UIColor
  @available(iOS 14.5, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 14.5, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 14.5, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
