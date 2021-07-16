@_exported import Foundation

protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func dynamicAnimatorWillResume(_ animator: UIDynamicAnimator)
  @available(iOS 7.0, *)
  optional func dynamicAnimatorDidPause(_ animator: UIDynamicAnimator)
}
@available(iOS 7.0, *)
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(_ behavior: UIDynamicBehavior)
  func removeBehavior(_ behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func items(in rect: CGRect) -> [UIDynamicItem]
  @available(swift, obsoleted: 3, renamed: "items(in:)")
  func itemsInRect(_ rect: CGRect) -> [UIDynamicItem]
  func updateItem(usingCurrentState item: UIDynamicItem)
  @available(swift, obsoleted: 3, renamed: "updateItem(usingCurrentState:)")
  func updateItemUsingCurrentState(_ item: UIDynamicItem)
  var isRunning: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isRunning")
  var running: Bool { get }
  var elapsedTime: TimeInterval { get }
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCell(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForCell(at:)")
  func layoutAttributesForCellAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForSupplementaryView(ofKind:at:)")
  func layoutAttributesForSupplementaryViewOfKind(_ kind: String, atIndexPath indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind decorationViewKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForDecorationView(ofKind:at:)")
  func layoutAttributesForDecorationViewOfKind(_ decorationViewKind: String, atIndexPath indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
}
