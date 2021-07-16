@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "NSDiffableDataSourceSnapshotReference")
typealias NSDiffableDataSourceSnapshot = NSDiffableDataSourceSnapshotReference
@available(iOS 13.0, *)
class NSDiffableDataSourceSnapshotReference : NSObject, NSCopying {
  var numberOfItems: Int { get }
  var numberOfSections: Int { get }
  var sectionIdentifiers: [Any] { get }
  var itemIdentifiers: [Any] { get }
  func numberOfItems(inSection sectionIdentifier: Any) -> Int
  @available(swift, obsoleted: 3, renamed: "numberOfItems(inSection:)")
  func numberOfItemsInSection(_ sectionIdentifier: Any) -> Int
  func itemIdentifiersInSection(withIdentifier sectionIdentifier: Any) -> [Any]
  @available(swift, obsoleted: 3, renamed: "itemIdentifiersInSection(withIdentifier:)")
  func itemIdentifiersInSectionWithIdentifier(_ sectionIdentifier: Any) -> [Any]
  func sectionIdentifier(forSectionContainingItemIdentifier itemIdentifier: Any) -> Any?
  @available(swift, obsoleted: 3, renamed: "sectionIdentifier(forSectionContainingItemIdentifier:)")
  func sectionIdentifierForSectionContainingItemIdentifier(_ itemIdentifier: Any) -> Any?
  func index(ofItemIdentifier itemIdentifier: Any) -> Int
  @available(swift, obsoleted: 3, renamed: "index(ofItemIdentifier:)")
  func indexOfItemIdentifier(_ itemIdentifier: Any) -> Int
  func index(ofSectionIdentifier sectionIdentifier: Any) -> Int
  @available(swift, obsoleted: 3, renamed: "index(ofSectionIdentifier:)")
  func indexOfSectionIdentifier(_ sectionIdentifier: Any) -> Int
  func appendItems(withIdentifiers identifiers: [Any])
  @available(swift, obsoleted: 3, renamed: "appendItems(withIdentifiers:)")
  func appendItemsWithIdentifiers(_ identifiers: [Any])
  func appendItems(withIdentifiers identifiers: [Any], intoSectionWithIdentifier sectionIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "appendItems(withIdentifiers:intoSectionWithIdentifier:)")
  func appendItemsWithIdentifiers(_ identifiers: [Any], intoSectionWithIdentifier sectionIdentifier: Any)
  func insertItems(withIdentifiers identifiers: [Any], beforeItemWithIdentifier itemIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "insertItems(withIdentifiers:beforeItemWithIdentifier:)")
  func insertItemsWithIdentifiers(_ identifiers: [Any], beforeItemWithIdentifier itemIdentifier: Any)
  func insertItems(withIdentifiers identifiers: [Any], afterItemWithIdentifier itemIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "insertItems(withIdentifiers:afterItemWithIdentifier:)")
  func insertItemsWithIdentifiers(_ identifiers: [Any], afterItemWithIdentifier itemIdentifier: Any)
  func deleteItems(withIdentifiers identifiers: [Any])
  @available(swift, obsoleted: 3, renamed: "deleteItems(withIdentifiers:)")
  func deleteItemsWithIdentifiers(_ identifiers: [Any])
  func deleteAllItems()
  func moveItem(withIdentifier fromIdentifier: Any, beforeItemWithIdentifier toIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "moveItem(withIdentifier:beforeItemWithIdentifier:)")
  func moveItemWithIdentifier(_ fromIdentifier: Any, beforeItemWithIdentifier toIdentifier: Any)
  func moveItem(withIdentifier fromIdentifier: Any, afterItemWithIdentifier toIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "moveItem(withIdentifier:afterItemWithIdentifier:)")
  func moveItemWithIdentifier(_ fromIdentifier: Any, afterItemWithIdentifier toIdentifier: Any)
  func reloadItems(withIdentifiers identifiers: [Any])
  @available(swift, obsoleted: 3, renamed: "reloadItems(withIdentifiers:)")
  func reloadItemsWithIdentifiers(_ identifiers: [Any])
  func appendSections(withIdentifiers sectionIdentifiers: [Any])
  @available(swift, obsoleted: 3, renamed: "appendSections(withIdentifiers:)")
  func appendSectionsWithIdentifiers(_ sectionIdentifiers: [Any])
  func insertSections(withIdentifiers sectionIdentifiers: [Any], beforeSectionWithIdentifier toSectionIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "insertSections(withIdentifiers:beforeSectionWithIdentifier:)")
  func insertSectionsWithIdentifiers(_ sectionIdentifiers: [Any], beforeSectionWithIdentifier toSectionIdentifier: Any)
  func insertSections(withIdentifiers sectionIdentifiers: [Any], afterSectionWithIdentifier toSectionIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "insertSections(withIdentifiers:afterSectionWithIdentifier:)")
  func insertSectionsWithIdentifiers(_ sectionIdentifiers: [Any], afterSectionWithIdentifier toSectionIdentifier: Any)
  func deleteSections(withIdentifiers sectionIdentifiers: [Any])
  @available(swift, obsoleted: 3, renamed: "deleteSections(withIdentifiers:)")
  func deleteSectionsWithIdentifiers(_ sectionIdentifiers: [Any])
  func moveSection(withIdentifier fromSectionIdentifier: Any, beforeSectionWithIdentifier toSectionIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "moveSection(withIdentifier:beforeSectionWithIdentifier:)")
  func moveSectionWithIdentifier(_ fromSectionIdentifier: Any, beforeSectionWithIdentifier toSectionIdentifier: Any)
  func moveSection(withIdentifier fromSectionIdentifier: Any, afterSectionWithIdentifier toSectionIdentifier: Any)
  @available(swift, obsoleted: 3, renamed: "moveSection(withIdentifier:afterSectionWithIdentifier:)")
  func moveSectionWithIdentifier(_ fromSectionIdentifier: Any, afterSectionWithIdentifier toSectionIdentifier: Any)
  func reloadSections(withIdentifiers sectionIdentifiers: [Any])
  @available(swift, obsoleted: 3, renamed: "reloadSections(withIdentifiers:)")
  func reloadSectionsWithIdentifiers(_ sectionIdentifiers: [Any])
  init()
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(swift, obsoleted: 3, renamed: "UICollectionViewDiffableDataSourceReferenceCellProvider")
typealias UICollectionViewDiffableDataSourceCellProvider = UICollectionViewDiffableDataSourceReferenceCellProvider
typealias UICollectionViewDiffableDataSourceReferenceCellProvider = (UICollectionView, IndexPath, Any) -> UICollectionViewCell?
typealias UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider = (UICollectionView, String, IndexPath) -> UICollectionReusableView?
@available(swift, obsoleted: 3, renamed: "UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider")
typealias UICollectionViewDiffableDataSourceSupplementaryViewProvider = UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider
@available(iOS 14.0, *)
class __NSDiffableDataSourceSectionTransaction : NSObject {
  var sectionIdentifier: Any { get }
  var initialSnapshot: NSDiffableDataSourceSectionSnapshotReference { get }
  var finalSnapshot: NSDiffableDataSourceSectionSnapshotReference { get }
  var difference: CollectionDifference<Any> { get }
  init()
}
@available(iOS 14.0, *)
class __NSDiffableDataSourceTransaction : NSObject {
  var initialSnapshot: NSDiffableDataSourceSnapshotReference { get }
  var finalSnapshot: NSDiffableDataSourceSnapshotReference { get }
  var difference: CollectionDifference<Any> { get }
  var sectionTransactions: [__NSDiffableDataSourceSectionTransaction] { get }
  init()
}
@available(iOS 14.0, *)
class __UICollectionViewDiffableDataSourceReorderingHandlers : NSObject, NSCopying {
  var canReorderItemHandler: ((Any) -> Bool)?
  var willReorderHandler: ((__NSDiffableDataSourceTransaction) -> Void)?
  var didReorderHandler: ((__NSDiffableDataSourceTransaction) -> Void)?
  init()
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 14.0, *)
class __UICollectionViewDiffableDataSourceSectionSnapshotHandlers : NSObject, NSCopying {
  var shouldExpandItemHandler: ((Any) -> Bool)?
  var willExpandItemHandler: ((Any) -> Void)?
  var shouldCollapseItemHandler: ((Any) -> Bool)?
  var willCollapseItemHandler: ((Any) -> Void)?
  var snapshotForExpandingParentItemHandler: ((Any, NSDiffableDataSourceSectionSnapshotReference) -> NSDiffableDataSourceSectionSnapshotReference)?
  init()
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UICollectionViewDiffableDataSourceReference")
typealias UICollectionViewDiffableDataSource = UICollectionViewDiffableDataSourceReference
@available(iOS 13.0, *)
class UICollectionViewDiffableDataSourceReference : NSObject, UICollectionViewDataSource {
  init(collectionView: UICollectionView, cellProvider: @escaping UICollectionViewDiffableDataSourceReferenceCellProvider)
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var supplementaryViewProvider: UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider?
  func snapshot() -> NSDiffableDataSourceSnapshotReference
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool) async
  func itemIdentifier(for indexPath: IndexPath) -> Any?
  @available(swift, obsoleted: 3, renamed: "itemIdentifier(for:)")
  func itemIdentifierForIndexPath(_ indexPath: IndexPath) -> Any?
  func indexPath(forItemIdentifier identifier: Any) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "indexPath(forItemIdentifier:)")
  func indexPathForItemIdentifier(_ identifier: Any) -> IndexPath?
  @available(iOS 14.0, *)
  @NSCopying var reorderingHandlers: __UICollectionViewDiffableDataSourceReorderingHandlers
  @available(iOS 14.0, *)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, toSection sectionIdentifier: Any, animatingDifferences: Bool)
  @available(iOS 14.0, *)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, toSection sectionIdentifier: Any, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  @available(iOS 14.0, *)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, toSection sectionIdentifier: Any, animatingDifferences: Bool) async
  @available(iOS 14.0, *)
  func snapshot(forSection section: Any) -> NSDiffableDataSourceSectionSnapshotReference
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "snapshot(forSection:)")
  func snapshotForSection(_ section: Any) -> NSDiffableDataSourceSectionSnapshotReference
  @available(iOS 14.0, *)
  @NSCopying var sectionSnapshotHandlers: __UICollectionViewDiffableDataSourceSectionSnapshotHandlers
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
  @available(iOS 13.0, *)
  func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)

  /// Returns a list of index titles to display in the index view (e.g. ["A", "B", "C" ... "Z", "#"])
  @available(iOS 14.0, *)
  func indexTitles(for collectionView: UICollectionView) -> [String]?

  /// Returns the index path that corresponds to the given title / index. (e.g. "B",1)
  /// Return an index path with a single index to indicate an entire section, instead of a specific item.
  @available(iOS 14.0, *)
  func collectionView(_ collectionView: UICollectionView, indexPathForIndexTitle title: String, at index: Int) -> IndexPath
}
@available(swift, obsoleted: 3, renamed: "UITableViewDiffableDataSourceReferenceCellProvider")
typealias UITableViewDiffableDataSourceCellProvider = UITableViewDiffableDataSourceReferenceCellProvider
typealias UITableViewDiffableDataSourceReferenceCellProvider = (UITableView, IndexPath, Any) -> UITableViewCell?
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UITableViewDiffableDataSourceReference")
typealias UITableViewDiffableDataSource = UITableViewDiffableDataSourceReference
@available(iOS 13.0, *)
class UITableViewDiffableDataSourceReference : NSObject, UITableViewDataSource {
  init(tableView: UITableView, cellProvider: @escaping UITableViewDiffableDataSourceReferenceCellProvider)
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  func snapshot() -> NSDiffableDataSourceSnapshotReference
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool) async
  func itemIdentifier(for indexPath: IndexPath) -> Any?
  @available(swift, obsoleted: 3, renamed: "itemIdentifier(for:)")
  func itemIdentifierForIndexPath(_ indexPath: IndexPath) -> Any?
  func indexPath(forItemIdentifier identifier: Any) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "indexPath(forItemIdentifier:)")
  func indexPathForItemIdentifier(_ identifier: Any) -> IndexPath?
  var defaultRowAnimation: UITableView.RowAnimation
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(iOS 13.0, *)
  func numberOfSections(in tableView: UITableView) -> Int
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  func sectionIndexTitles(for tableView: UITableView) -> [String]?
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
