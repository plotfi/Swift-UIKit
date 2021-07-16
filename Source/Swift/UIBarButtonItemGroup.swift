@_exported import Foundation

@available(iOS 9.0, *)
class UIBarButtonItemGroup : NSObject, NSCoding {

  /// Create a new bar button item group with the given items. When bar button item layout is done, either the group's barButtonItems or its representativeItem is displayed (if it exists).
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  init?(coder: NSCoder)

  /// The bar button items associated with this group. Changing these items will affect the bar displaying these items without needing to re-set the groups that are in that bar. Any UIBarButtonItems that are already in group will be removed from that group.
  var barButtonItems: [UIBarButtonItem]

  /// In order to display as many items as possible, bars that support UIBarButtonItemGroup may choose to collapse items associated with groups to the representativeItem specified by the group.
  /// A bar will only collapse groups that have a representativeItem set, but may still choose to use an alternate presentation of these items.
  /// A UIBarButtonItem may only be either the representativeItem or a member of the barButtonItems of a single UIBarButtonItemGroup and may only represent a single group.
  /// If the representativeItem has an action, then that action will be invoked, otherwise the bar will present a standard UI to allow selection of the barButtonItems in the representedItem's group.
  var representativeItem: UIBarButtonItem?

  /// Returns YES if the representativeItem of this group is currently being displayed, rather than its barButtonItems.
  var isDisplayingRepresentativeItem: Bool { get }

  /// Returns YES if the representativeItem of this group is currently being displayed, rather than its barButtonItems.
  @available(swift, obsoleted: 3, renamed: "isDisplayingRepresentativeItem")
  var displayingRepresentativeItem: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  func encode(with coder: NSCoder)
}
extension UIBarButtonItem {

  /// The group that the UIBarButtonItem is currently associated with, either as a member of the barButtonItems array or as that group's representativeItem.
  @available(iOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
