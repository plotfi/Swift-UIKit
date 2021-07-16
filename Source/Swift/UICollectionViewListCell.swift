@_exported import Foundation

@available(iOS 14.0, *)
class UICollectionViewListCell : UICollectionViewCell {

  /// Returns a default list content configuration for the cell's style.
  func __defaultContentConfiguration() -> __UIListContentConfiguration

  /// Defines the level of indentation for this cell. This is set automatically when using a hierarchical data source.
  var indentationLevel: Int

  /// The width of an indentation level. The overall indentation will be indentationWidth * indentationLevel.
  var indentationWidth: CGFloat

  /// Defines whether accessories on the leading side are indented as well. If NO, only the content view will be indented.
  /// Defaults to YES.
  var indentsAccessories: Bool

  /// All the accessories that should be decorating the cell. The order and whether an accessory is
  /// rendered on the leading or trailing side of the cell is defined by the system.
  var __accessories: [__UICellAccessory]

  /// When used in a section that supports separators, this guide can be used to adjust the preferred
  /// insets of the separators. To align the separators to your content, add constraints to the leading
  /// or trailing anchors of this layout guide. When a system-provided content configuration is applied
  /// to the cell, the separator will be automatically aligned to the primary text in the content view.
  /// @see UICollectionLayoutListConfiguration
  var separatorLayoutGuide: UILayoutGuide { get }
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewListCell {
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewListCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var accessories: [UICellAccessory]
}
