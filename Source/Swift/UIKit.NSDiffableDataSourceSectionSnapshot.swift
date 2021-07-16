@_exported import Foundation

@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "NSDiffableDataSourceSectionSnapshotReference")
typealias NSDiffableDataSourceSectionSnapshot = NSDiffableDataSourceSectionSnapshotReference
@available(iOS 14.0, *)
class NSDiffableDataSourceSectionSnapshotReference : NSObject, NSCopying {
  init()
  func appendItems(_ items: [Any])
  func appendItems(_ items: [Any], intoParentItem parentItem: Any?)
  func insertItems(_ items: [Any], beforeItem beforeIdentifier: Any)
  func insertItems(_ items: [Any], afterItem afterIdentifier: Any)
  func deleteItems(_ items: [Any])
  func deleteAllItems()
  func expandItems(_ items: [Any])
  func collapseItems(_ items: [Any])
  func replaceChildren(ofParentItem parentItem: Any, with snapshot: NSDiffableDataSourceSectionSnapshotReference)
  @available(swift, obsoleted: 3, renamed: "replaceChildren(ofParentItem:with:)")
  func replaceChildrenOfParentItem(_ parentItem: Any, withSnapshot snapshot: NSDiffableDataSourceSectionSnapshotReference)
  func insert(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, beforeItem item: Any)
  @available(swift, obsoleted: 3, renamed: "insert(_:beforeItem:)")
  func insertSnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, beforeItem item: Any)
  func insert(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, afterItem item: Any) -> Any
  @available(swift, obsoleted: 3, renamed: "insert(_:afterItem:)")
  func insertSnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, afterItem item: Any) -> Any
  func isExpanded(_ item: Any) -> Bool
  func isVisible(_ item: Any) -> Bool
  func containsItem(_ item: Any) -> Bool
  func level(ofItem item: Any) -> Int
  @available(swift, obsoleted: 3, renamed: "level(ofItem:)")
  func levelOfItem(_ item: Any) -> Int
  func index(ofItem item: Any) -> Int
  @available(swift, obsoleted: 3, renamed: "index(ofItem:)")
  func indexOfItem(_ item: Any) -> Int
  func expandedItems() -> [Any]
  func parent(ofChildItem childItem: Any) -> Any?
  @available(swift, obsoleted: 3, renamed: "parent(ofChildItem:)")
  func parentOfChildItem(_ childItem: Any) -> Any?
  func ofParentItem(_ parentItem: Any) -> NSDiffableDataSourceSectionSnapshotReference
  @available(swift, obsoleted: 3, renamed: "ofParentItem(_:)")
  func snapshotOfParentItem(_ parentItem: Any) -> NSDiffableDataSourceSectionSnapshotReference
  func ofParentItem(_ parentItem: Any, includingParentItem: Bool) -> NSDiffableDataSourceSectionSnapshotReference
  @available(swift, obsoleted: 3, renamed: "ofParentItem(_:includingParentItem:)")
  func snapshotOfParentItem(_ parentItem: Any, includingParentItem: Bool) -> NSDiffableDataSourceSectionSnapshotReference
  var items: [Any] { get }
  var rootItems: [Any] { get }
  var visibleItems: [Any] { get }
  func visualDescription() -> String
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
