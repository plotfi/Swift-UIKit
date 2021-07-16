@_exported import Foundation

@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollectionView.elementKindSectionHeader")
let UICollectionElementKindSectionHeader: String
extension UICollectionView {
  @available(iOS 6.0, *)
  class let elementKindSectionHeader: String
  @available(iOS 6.0, *)
  class let elementKindSectionFooter: String
  enum ScrollDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case vertical
    @available(swift, obsoleted: 3, renamed: "vertical")
    static var Vertical: UICollectionView.ScrollDirection { get }
    case horizontal
    @available(swift, obsoleted: 3, renamed: "horizontal")
    static var Horizontal: UICollectionView.ScrollDirection { get }
  }
  enum ElementCategory : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case cell
    @available(swift, obsoleted: 3, renamed: "cell")
    static var Cell: UICollectionView.ElementCategory { get }
    case supplementaryView
    @available(swift, obsoleted: 3, renamed: "supplementaryView")
    static var SupplementaryView: UICollectionView.ElementCategory { get }
    case decorationView
    @available(swift, obsoleted: 3, renamed: "decorationView")
    static var DecorationView: UICollectionView.ElementCategory { get }
  }
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollectionView.elementKindSectionFooter")
let UICollectionElementKindSectionFooter: String
@available(swift, obsoleted: 4.2, renamed: "UICollectionView.ScrollDirection")
typealias UICollectionViewScrollDirection = UICollectionView.ScrollDirection
@available(swift, obsoleted: 4.2, renamed: "UICollectionView.ElementCategory")
typealias UICollectionElementCategory = UICollectionView.ElementCategory
@available(iOS 6.0, *)
class UICollectionViewLayoutAttributes : NSObject, NSCopying, UIDynamicItem {
  var frame: CGRect
  var center: CGPoint
  var size: CGSize
  var transform3D: CATransform3D
  @available(iOS 7.0, *)
  var bounds: CGRect
  @available(iOS 7.0, *)
  var transform: CGAffineTransform
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  @available(swift, obsoleted: 3, renamed: "isHidden")
  var hidden: Bool
  var indexPath: IndexPath
  var representedElementCategory: UICollectionView.ElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWith indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "init(forCellWith:)")
  convenience init(forCellWithIndexPath indexPath: IndexPath)
  @available(*, unavailable, renamed: "init(forCellWith:)", message: "Not available in Swift")
  class func layoutAttributesForCellWithIndexPath(_ indexPath: IndexPath) -> Self
  convenience init(forSupplementaryViewOfKind elementKind: String, with indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "init(forSupplementaryViewOfKind:with:)")
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: IndexPath)
  @available(*, unavailable, renamed: "init(forSupplementaryViewOfKind:with:)", message: "Not available in Swift")
  class func layoutAttributesForSupplementaryViewOfKind(_ elementKind: String, withIndexPath indexPath: IndexPath) -> Self
  convenience init(forDecorationViewOfKind decorationViewKind: String, with indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "init(forDecorationViewOfKind:with:)")
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: IndexPath)
  @available(*, unavailable, renamed: "init(forDecorationViewOfKind:with:)", message: "Not available in Swift")
  class func layoutAttributesForDecorationViewOfKind(_ decorationViewKind: String, withIndexPath indexPath: IndexPath) -> Self
  init()

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(iOS 6.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 7.0, *)
class UICollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  @available(iOS 8.0, *)
  func invalidateItems(at indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidateItems(at:)")
  func invalidateItemsAtIndexPaths(_ indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  func invalidateSupplementaryElements(ofKind elementKind: String, at indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidateSupplementaryElements(ofKind:at:)")
  func invalidateSupplementaryElementsOfKind(_ elementKind: String, atIndexPaths indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  func invalidateDecorationElements(ofKind elementKind: String, at indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidateDecorationElements(ofKind:at:)")
  func invalidateDecorationElementsOfKind(_ elementKind: String, atIndexPaths indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  var invalidatedItemIndexPaths: [IndexPath]? { get }
  @available(iOS 8.0, *)
  var invalidatedSupplementaryIndexPaths: [String : [IndexPath]]? { get }
  @available(iOS 8.0, *)
  var invalidatedDecorationIndexPaths: [String : [IndexPath]]? { get }
  @available(iOS 8.0, *)
  var contentOffsetAdjustment: CGPoint
  @available(iOS 8.0, *)
  var contentSizeAdjustment: CGSize
  @available(iOS 9.0, *)
  var previousIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  @available(iOS 9.0, *)
  var targetIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  @available(iOS 9.0, *)
  var interactiveMovementTarget: CGPoint { get }
  init()
}
@available(iOS 6.0, *)
class UICollectionViewLayout : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  @available(iOS 7.0, *)
  func invalidateLayout(with context: UICollectionViewLayoutInvalidationContext)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidateLayout(with:)")
  func invalidateLayoutWithContext(_ context: UICollectionViewLayoutInvalidationContext)
  func register(_ viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  @available(swift, obsoleted: 3, renamed: "register(_:forDecorationViewOfKind:)")
  func registerClass(_ viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(_ nib: UINib?, forDecorationViewOfKind elementKind: String)
  @available(swift, obsoleted: 3, renamed: "register(_:forDecorationViewOfKind:)")
  func registerNib(_ nib: UINib?, forDecorationViewOfKind elementKind: String)
  @available(iOS 6.0, *)
  func encode(with coder: NSCoder)
}
extension UICollectionViewLayout {
  class var layoutAttributesClass: AnyClass { get }
  @available(iOS 7.0, *)
  class var invalidationContextClass: AnyClass { get }
  func prepare()
  @available(swift, obsoleted: 3, renamed: "prepare()")
  func prepareLayout()
  func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForElements(in:)")
  func layoutAttributesForElementsInRect(_ rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForItem(at:)")
  func layoutAttributesForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForSupplementaryView(ofKind:at:)")
  func layoutAttributesForSupplementaryViewOfKind(_ elementKind: String, atIndexPath indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForDecorationView(ofKind:at:)")
  func layoutAttributesForDecorationViewOfKind(_ elementKind: String, atIndexPath indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool
  @available(swift, obsoleted: 3, renamed: "shouldInvalidateLayout(forBoundsChange:)")
  func shouldInvalidateLayoutForBoundsChange(_ newBounds: CGRect) -> Bool
  @available(iOS 7.0, *)
  func invalidationContext(forBoundsChange newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidationContext(forBoundsChange:)")
  func invalidationContextForBoundsChange(_ newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 8.0, *)
  func shouldInvalidateLayout(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "shouldInvalidateLayout(forPreferredLayoutAttributes:withOriginalAttributes:)")
  func shouldInvalidateLayoutForPreferredLayoutAttributes(_ preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(iOS 8.0, *)
  func invalidationContext(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidationContext(forPreferredLayoutAttributes:withOriginalAttributes:)")
  func invalidationContextForPreferredLayoutAttributes(_ preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "targetContentOffset(forProposedContentOffset:withScrollingVelocity:)")
  func targetContentOffsetForProposedContentOffset(_ proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "targetContentOffset(forProposedContentOffset:)")
  func targetContentOffsetForProposedContentOffset(_ proposedContentOffset: CGPoint) -> CGPoint
  var collectionViewContentSize: CGSize { get }
  var developmentLayoutDirection: UIUserInterfaceLayoutDirection { get }
  var flipsHorizontallyInOppositeLayoutDirection: Bool { get }
}
extension UICollectionViewLayout {
  func prepare(forCollectionViewUpdates updateItems: [UICollectionViewUpdateItem])
  @available(swift, obsoleted: 3, renamed: "prepare(forCollectionViewUpdates:)")
  func prepareForCollectionViewUpdates(_ updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepare(forAnimatedBoundsChange oldBounds: CGRect)
  @available(swift, obsoleted: 3, renamed: "prepare(forAnimatedBoundsChange:)")
  func prepareForAnimatedBoundsChange(_ oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  @available(iOS 7.0, *)
  func prepareForTransition(to newLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "prepareForTransition(to:)")
  func prepareForTransitionToLayout(_ newLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  func prepareForTransition(from oldLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "prepareForTransition(from:)")
  func prepareForTransitionFromLayout(_ oldLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "initialLayoutAttributesForAppearingItem(at:)")
  func initialLayoutAttributesForAppearingItemAtIndexPath(_ itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "finalLayoutAttributesForDisappearingItem(at:)")
  func finalLayoutAttributesForDisappearingItemAtIndexPath(_ itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "initialLayoutAttributesForAppearingSupplementaryElement(ofKind:at:)")
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(_ elementKind: String, atIndexPath elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "finalLayoutAttributesForDisappearingSupplementaryElement(ofKind:at:)")
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(_ elementKind: String, atIndexPath elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "initialLayoutAttributesForAppearingDecorationElement(ofKind:at:)")
  func initialLayoutAttributesForAppearingDecorationElementOfKind(_ elementKind: String, atIndexPath decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "finalLayoutAttributesForDisappearingDecorationElement(ofKind:at:)")
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(_ elementKind: String, atIndexPath decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(iOS 7.0, *)
  func indexPathsToDeleteForSupplementaryView(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "indexPathsToDeleteForSupplementaryView(ofKind:)")
  func indexPathsToDeleteForSupplementaryViewOfKind(_ elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  func indexPathsToDeleteForDecorationView(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "indexPathsToDeleteForDecorationView(ofKind:)")
  func indexPathsToDeleteForDecorationViewOfKind(_ elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  func indexPathsToInsertForSupplementaryView(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "indexPathsToInsertForSupplementaryView(ofKind:)")
  func indexPathsToInsertForSupplementaryViewOfKind(_ elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  func indexPathsToInsertForDecorationView(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "indexPathsToInsertForDecorationView(ofKind:)")
  func indexPathsToInsertForDecorationViewOfKind(_ elementKind: String) -> [IndexPath]
}
extension UICollectionViewLayout {
  @available(iOS 9.0, *)
  func targetIndexPath(forInteractivelyMovingItem previousIndexPath: IndexPath, withPosition position: CGPoint) -> IndexPath
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "targetIndexPath(forInteractivelyMovingItem:withPosition:)")
  func targetIndexPathForInteractivelyMovingItem(_ previousIndexPath: IndexPath, withPosition position: CGPoint) -> IndexPath
  @available(iOS 9.0, *)
  func layoutAttributesForInteractivelyMovingItem(at indexPath: IndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForInteractivelyMovingItem(at:withTargetPosition:)")
  func layoutAttributesForInteractivelyMovingItemAtIndexPath(_ indexPath: IndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(iOS 9.0, *)
  func invalidationContext(forInteractivelyMovingItems targetIndexPaths: [IndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [IndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidationContext(forInteractivelyMovingItems:withTargetPosition:previousIndexPaths:previousPosition:)")
  func invalidationContextForInteractivelyMovingItems(_ targetIndexPaths: [IndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [IndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 9.0, *)
  func invalidationContextForEndingInteractiveMovementOfItems(toFinalIndexPaths indexPaths: [IndexPath], previousIndexPaths: [IndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidationContextForEndingInteractiveMovementOfItems(toFinalIndexPaths:previousIndexPaths:movementCancelled:)")
  func invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths(_ indexPaths: [IndexPath], previousIndexPaths: [IndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
