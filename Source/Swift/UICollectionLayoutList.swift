@_exported import Foundation

@available(iOS 14.0, *)
enum __UICollectionLayoutListAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case plain
  @available(swift, obsoleted: 3, renamed: "plain")
  static var Plain: __UICollectionLayoutListAppearance { get }
  case grouped
  @available(swift, obsoleted: 3, renamed: "grouped")
  static var Grouped: __UICollectionLayoutListAppearance { get }
  case insetGrouped
  @available(swift, obsoleted: 3, renamed: "insetGrouped")
  static var InsetGrouped: __UICollectionLayoutListAppearance { get }
  case sidebar
  @available(swift, obsoleted: 3, renamed: "sidebar")
  static var Sidebar: __UICollectionLayoutListAppearance { get }
  case sidebarPlain
  @available(swift, obsoleted: 3, renamed: "sidebarPlain")
  static var SidebarPlain: __UICollectionLayoutListAppearance { get }
}
@available(iOS 14.0, *)
enum __UICollectionLayoutListHeaderMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// No headers are shown
  case none

  /// No headers are shown
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: __UICollectionLayoutListHeaderMode { get }

  /// Uses supplementary views of kind UICollectionElementKindSectionHeader to show headers
  case supplementary

  /// Uses supplementary views of kind UICollectionElementKindSectionHeader to show headers
  @available(swift, obsoleted: 3, renamed: "supplementary")
  static var Supplementary: __UICollectionLayoutListHeaderMode { get }

  /// Styles the first item in a section as a header. This is especially useful when using hierarchical data sources to be able to expand and collapse the header.
  case firstItemInSection

  /// Styles the first item in a section as a header. This is especially useful when using hierarchical data sources to be able to expand and collapse the header.
  @available(swift, obsoleted: 3, renamed: "firstItemInSection")
  static var FirstItemInSection: __UICollectionLayoutListHeaderMode { get }
}
@available(iOS 14.0, *)
enum __UICollectionLayoutListFooterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// No footers are shown
  case none

  /// No footers are shown
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: __UICollectionLayoutListFooterMode { get }

  /// Uses supplementary views of kind UICollectionElementKindSectionFooter to show footers
  case supplementary

  /// Uses supplementary views of kind UICollectionElementKindSectionFooter to show footers
  @available(swift, obsoleted: 3, renamed: "supplementary")
  static var Supplementary: __UICollectionLayoutListFooterMode { get }
}
@available(iOS 14.0, *)
typealias __UICollectionLayoutListSwipeActionsConfigurationProvider = (IndexPath) -> UISwipeActionsConfiguration?

/// A block that is executed by list sections to provide granular control over separator appearance.
///
/// @param itemIndexPath The index path of the item for which separators are being configured.
/// @param sectionSeparatorConfiguration The list section's separator configuration for this cell. This configuration contains
/// the values for separator visibility and insets according to the current state of the item.
///
/// @return The configuration to use for separators at \c itemIndexPath.
@available(iOS 14.5, *)
typealias __UICollectionLayoutListItemSeparatorHandler = (IndexPath, __UIListSeparatorConfiguration) -> __UIListSeparatorConfiguration

/// A list configuration can be used to layout a section inside a UICollectionViewCompositionalLayout as a list.
@available(iOS 14.0, *)
class __UICollectionLayoutListConfiguration : NSObject, NSCopying {
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  convenience init()
  init(appearance: __UICollectionLayoutListAppearance)

  /// The overall appearance of the section.
  var appearance: __UICollectionLayoutListAppearance { get }

  /// Whether this section shows separators or not. For additional control, see separatorConfiguration.
  /// Note that when this property is NO, the separatorConfiguration is ineffective.
  var showsSeparators: Bool

  /// The preferred configuration for separators. Used as a baseline for a section in a list using this \c UICollectionLayoutListConfiguration
  @available(iOS 14.5, *)
  @NSCopying var separatorConfiguration: __UIListSeparatorConfiguration

  /// This handler is executed when the list section is configuring separator appearance for an item. The index path for the item being configured and
  /// a resolved separator configuration are passed in to this block. The configuration returned from this block will be treated as the final
  /// separator configuration for this item.
  @available(iOS 14.5, *)
  var itemSeparatorHandler: __UICollectionLayoutListItemSeparatorHandler?

  /// The background color of the section.
  /// Defaults to nil, indicating the system background color for the specified appearance is used.
  var backgroundColor: UIColor?

  /// Called when list is about to show leading swipe actions for a particular index path.
  /// Return either a UISwipeActionsConfiguration object or nil if this index path does not show swipe actions.
  var leadingSwipeActionsConfigurationProvider: __UICollectionLayoutListSwipeActionsConfigurationProvider?

  /// Called when list is about to show trailing swipe actions for a particular index path.
  /// Return either a UISwipeActionsConfiguration object or nil if this index path does not show swipe actions.
  var trailingSwipeActionsConfigurationProvider: __UICollectionLayoutListSwipeActionsConfigurationProvider?

  /// Defines whether the section has a header. Defaults to UICollectionLayoutListHeaderModeNone.
  var headerMode: __UICollectionLayoutListHeaderMode

  /// Defines whether the section has a footer. Defaults to UICollectionLayoutListFooterModeNone.
  var footerMode: __UICollectionLayoutListFooterMode
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
extension NSCollectionLayoutSection {

  /// Creates a list section using the specified configuration. You should pass the layoutEnvironment from inside the UICollectionViewCompositionalLayoutSectionProvider.
  @available(iOS 14.0, *)
  convenience init(__listConfiguration configuration: __UICollectionLayoutListConfiguration, layoutEnvironment: NSCollectionLayoutEnvironment)

  /// Creates a list section using the specified configuration. You should pass the layoutEnvironment from inside the UICollectionViewCompositionalLayoutSectionProvider.
  @available(iOS 14.0, *)
  @available(*, unavailable, renamed: "init(__listConfiguration:layoutEnvironment:)", message: "Not available in Swift")
  class func __sectionWithListConfiguration(_ configuration: __UICollectionLayoutListConfiguration, layoutEnvironment: NSCollectionLayoutEnvironment) -> Self
}
extension UICollectionViewCompositionalLayout {

  /// Creates a compositional layout containing only list sections of the specified configuration.
  @available(iOS 14.0, *)
  convenience init(__listConfiguration configuration: __UICollectionLayoutListConfiguration)

  /// Creates a compositional layout containing only list sections of the specified configuration.
  @available(iOS 14.0, *)
  @available(*, unavailable, renamed: "init(__listConfiguration:)", message: "Not available in Swift")
  class func __layoutWithListConfiguration(_ configuration: __UICollectionLayoutListConfiguration) -> Self
}
