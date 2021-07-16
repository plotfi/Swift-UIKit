@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UICollectionView.ScrollPosition")
typealias UICollectionViewScrollPosition = UICollectionView.ScrollPosition
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollectionView.ReorderingCadence")
typealias UICollectionViewReorderingCadence = UICollectionView.ReorderingCadence
@available(swift, obsoleted: 4.2, renamed: "UICollectionView.LayoutInteractiveTransitionCompletion")
typealias UICollectionViewLayoutInteractiveTransitionCompletion = UICollectionView.LayoutInteractiveTransitionCompletion
extension UICollectionView {
  typealias LayoutInteractiveTransitionCompletion = (Bool, Bool) -> Void
  struct ScrollPosition : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UICollectionView.ScrollPosition
    typealias ArrayLiteralElement = UICollectionView.ScrollPosition
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var none: UICollectionView.ScrollPosition { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UICollectionView.ScrollPosition { get }
    static var top: UICollectionView.ScrollPosition { get }
    @available(swift, obsoleted: 3, renamed: "top")
    static var Top: UICollectionView.ScrollPosition { get }
    static var centeredVertically: UICollectionView.ScrollPosition { get }
    @available(swift, obsoleted: 3, renamed: "centeredVertically")
    static var CenteredVertically: UICollectionView.ScrollPosition { get }
    static var bottom: UICollectionView.ScrollPosition { get }
    @available(swift, obsoleted: 3, renamed: "bottom")
    static var Bottom: UICollectionView.ScrollPosition { get }
    static var left: UICollectionView.ScrollPosition { get }
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UICollectionView.ScrollPosition { get }
    static var centeredHorizontally: UICollectionView.ScrollPosition { get }
    @available(swift, obsoleted: 3, renamed: "centeredHorizontally")
    static var CenteredHorizontally: UICollectionView.ScrollPosition { get }
    static var right: UICollectionView.ScrollPosition { get }
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UICollectionView.ScrollPosition { get }
  }
  @available(iOS 11.0, *)
  enum ReorderingCadence : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case immediate
    @available(swift, obsoleted: 3, renamed: "immediate")
    static var Immediate: UICollectionView.ReorderingCadence { get }
    case fast
    @available(swift, obsoleted: 3, renamed: "fast")
    static var Fast: UICollectionView.ReorderingCadence { get }
    case slow
    @available(swift, obsoleted: 3, renamed: "slow")
    static var Slow: UICollectionView.ReorderingCadence { get }
  }
}
@available(iOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
  @available(swift, obsoleted: 3, renamed: "collectionView(_:cellForItemAt:)")
  func collectionView(_ collectionView: UICollectionView, cellForItemAtIndexPath indexPath: IndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  optional func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(swift, obsoleted: 3, renamed: "numberOfSections(in:)")
  optional func numberOfSectionsInCollectionView(_ collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
  @available(swift, obsoleted: 3, renamed: "collectionView(_:viewForSupplementaryElementOfKind:at:)")
  optional func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:canMoveItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:moveItemAt:to:)")
  optional func collectionView(_ collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: IndexPath, toIndexPath destinationIndexPath: IndexPath)

  /// Returns a list of index titles to display in the index view (e.g. ["A", "B", "C" ... "Z", "#"])
  @available(iOS 14.0, *)
  optional func indexTitles(for collectionView: UICollectionView) -> [String]?

  /// Returns a list of index titles to display in the index view (e.g. ["A", "B", "C" ... "Z", "#"])
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "indexTitles(for:)")
  optional func indexTitlesForCollectionView(_ collectionView: UICollectionView) -> [String]?

  /// Returns the index path that corresponds to the given title / index. (e.g. "B",1)
  /// Return an index path with a single index to indicate an entire section, instead of a specific item.
  @available(iOS 14.0, *)
  optional func collectionView(_ collectionView: UICollectionView, indexPathForIndexTitle title: String, at index: Int) -> IndexPath

  /// Returns the index path that corresponds to the given title / index. (e.g. "B",1)
  /// Return an index path with a single index to indicate an entire section, instead of a specific item.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:indexPathForIndexTitle:at:)")
  optional func collectionView(_ collectionView: UICollectionView, indexPathForIndexTitle title: String, atIndex index: Int) -> IndexPath
}
protocol UICollectionViewDataSourcePrefetching : NSObjectProtocol {
  @available(iOS 10.0, *)
  func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath])
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:prefetchItemsAt:)")
  func collectionView(_ collectionView: UICollectionView, prefetchItemsAtIndexPaths indexPaths: [IndexPath])
  @available(iOS 10.0, *)
  optional func collectionView(_ collectionView: UICollectionView, cancelPrefetchingForItemsAt indexPaths: [IndexPath])
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:cancelPrefetchingForItemsAt:)")
  optional func collectionView(_ collectionView: UICollectionView, cancelPrefetchingForItemsAtIndexPaths indexPaths: [IndexPath])
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "collectionView(_:shouldHighlightItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didHighlightItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didUnhighlightItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "collectionView(_:shouldSelectItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "collectionView(_:shouldDeselectItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didSelectItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didDeselectItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: IndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:willDisplay:forItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:willDisplaySupplementaryView:forElementKind:at:)")
  optional func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didEndDisplaying:forItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)")
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: IndexPath)
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "collectionView(_:shouldShowMenuForItemAt:)")
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(swift, obsoleted: 3, renamed: "collectionView(_:canPerformAction:forItemAt:withSender:)")
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:performAction:forItemAt:withSender:)")
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?)
  @available(iOS 7.0, *)
  optional func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:canFocusItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:shouldUpdateFocusIn:)")
  optional func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didUpdateFocusIn:with:)")
  optional func collectionView(_ collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> IndexPath?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "indexPathForPreferredFocusedView(in:)")
  optional func indexPathForPreferredFocusedViewInCollectionView(_ collectionView: UICollectionView) -> IndexPath?
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:targetIndexPathForMoveFromItemAt:toProposedIndexPath:)")
  optional func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(iOS 14.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canEditItemAt indexPath: IndexPath) -> Bool
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:canEditItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, canEditItemAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 11.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldSpringLoadItemAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:shouldSpringLoadItemAt:with:)")
  optional func collectionView(_ collectionView: UICollectionView, shouldSpringLoadItemAtIndexPath indexPath: IndexPath, withContext context: UISpringLoadedInteractionContext) -> Bool
  @available(iOS 13.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:shouldBeginMultipleSelectionInteractionAt:)")
  optional func collectionView(_ collectionView: UICollectionView, shouldBeginMultipleSelectionInteractionAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:didBeginMultipleSelectionInteractionAt:)")
  optional func collectionView(_ collectionView: UICollectionView, didBeginMultipleSelectionInteractionAtIndexPath indexPath: IndexPath)
  @available(iOS 13.0, *)
  optional func collectionViewDidEndMultipleSelectionInteraction(_ collectionView: UICollectionView)

  /**
   * @abstract Called when the interaction begins.
   *
   * @param collectionView  This UICollectionView.
   * @param indexPath       IndexPath of the item for which a configuration is being requested.
   * @param point           Location in the collection view's coordinate space
   *
   * @return A UIContextMenuConfiguration describing the menu to be presented. Return nil to prevent the interaction from beginning.
   *         Returning an empty configuration causes the interaction to begin then fail with a cancellation effect. You might use this
   *         to indicate to users that it's possible for a menu to be presented from this element, but that there are no actions to
   *         present at this particular time.
   */
  @available(iOS 13.0, *)
  optional func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?

  /**
   * @abstract Called when the interaction begins.
   *
   * @param collectionView  This UICollectionView.
   * @param indexPath       IndexPath of the item for which a configuration is being requested.
   * @param point           Location in the collection view's coordinate space
   *
   * @return A UIContextMenuConfiguration describing the menu to be presented. Return nil to prevent the interaction from beginning.
   *         Returning an empty configuration causes the interaction to begin then fail with a cancellation effect. You might use this
   *         to indicate to users that it's possible for a menu to be presented from this element, but that there are no actions to
   *         present at this particular time.
   */
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:contextMenuConfigurationForItemAt:point:)")
  optional func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAtIndexPath indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?

  /**
   * @abstract Called when the interaction begins. Return a UITargetedPreview describing the desired highlight preview.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   The configuration of the menu about to be displayed by this interaction.
   */
  @available(iOS 13.0, *)
  optional func collectionView(_ collectionView: UICollectionView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to dismiss. Return a UITargetedPreview describing the desired dismissal target.
   * The interaction will animate the presented menu to the target. Use this to customize the dismissal animation.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   The configuration of the menu displayed by this interaction.
   */
  @available(iOS 13.0, *)
  optional func collectionView(_ collectionView: UICollectionView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   Configuration of the currently displayed menu.
   * @param animator        Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  @available(iOS 13.0, *)
  optional func collectionView(_ collectionView: UICollectionView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   Configuration of the currently displayed menu.
   * @param animator        Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:willPerformPreviewActionForMenuWith:animator:)")
  optional func collectionView(_ collectionView: UICollectionView, willPerformPreviewActionForMenuWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the collection view is about to display a menu.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   The configuration of the menu about to be displayed.
   * @param animator        Appearance animator. Add animations to run them alongside the appearance transition.
   */
  @available(iOS 13.2, *)
  optional func collectionView(_ collectionView: UICollectionView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the collection view is about to display a menu.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   The configuration of the menu about to be displayed.
   * @param animator        Appearance animator. Add animations to run them alongside the appearance transition.
   */
  @available(iOS 13.2, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:willDisplayContextMenu:animator:)")
  optional func collectionView(_ collectionView: UICollectionView, willDisplayContextMenuWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the collection view's context menu interaction is about to end.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   Ending configuration.
   * @param animator        Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  @available(iOS 13.2, *)
  optional func collectionView(_ collectionView: UICollectionView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the collection view's context menu interaction is about to end.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   Ending configuration.
   * @param animator        Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  @available(iOS 13.2, *)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:willEndContextMenuInteraction:animator:)")
  optional func collectionView(_ collectionView: UICollectionView, willEndContextMenuInteractionWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
}
@available(iOS 6.0, *)
class UICollectionView : UIScrollView, UIDataSourceTranslating {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder: NSCoder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  @available(iOS 10.0, *)
  weak var prefetchDataSource: @sil_weak UICollectionViewDataSourcePrefetching?
  @available(iOS 10.0, *)
  var isPrefetchingEnabled: Bool
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "isPrefetchingEnabled")
  var prefetchingEnabled: Bool
  @available(iOS 11.0, *)
  weak var dragDelegate: @sil_weak UICollectionViewDragDelegate?
  @available(iOS 11.0, *)
  weak var dropDelegate: @sil_weak UICollectionViewDropDelegate?
  @available(iOS 11.0, *)
  var dragInteractionEnabled: Bool
  @available(iOS, unavailable)
  var contextMenuInteraction: UIContextMenuInteraction? { get }
  @available(iOS 11.0, *)
  var reorderingCadence: UICollectionView.ReorderingCadence
  var backgroundView: UIView?
  func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  @available(swift, obsoleted: 3, renamed: "register(_:forCellWithReuseIdentifier:)")
  func registerClass(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String)
  @available(swift, obsoleted: 3, renamed: "register(_:forCellWithReuseIdentifier:)")
  func registerNib(_ nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  @available(swift, obsoleted: 3, renamed: "register(_:forSupplementaryViewOfKind:withReuseIdentifier:)")
  func registerClass(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  @available(swift, obsoleted: 3, renamed: "register(_:forSupplementaryViewOfKind:withReuseIdentifier:)")
  func registerNib(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionViewCell
  @available(swift, obsoleted: 3, renamed: "dequeueReusableCell(withReuseIdentifier:for:)")
  func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forIndexPath indexPath: IndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryView(ofKind elementKind: String, withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionReusableView
  @available(swift, obsoleted: 3, renamed: "dequeueReusableSupplementaryView(ofKind:withReuseIdentifier:for:)")
  func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: IndexPath) -> UICollectionReusableView
  @available(iOS 14.0, *)
  func __dequeueConfiguredReusableCell(with registration: __UICollectionViewCellRegistration, for indexPath: IndexPath, item: Any) -> UICollectionViewCell
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__dequeueConfiguredReusableCell(with:for:item:)")
  func __dequeueConfiguredReusableCellWithRegistration(_ registration: __UICollectionViewCellRegistration, forIndexPath indexPath: IndexPath, item: Any) -> UICollectionViewCell
  @available(iOS 14.0, *)
  func __dequeueConfiguredReusableSupplementaryView(with registration: __UICollectionViewSupplementaryRegistration, for indexPath: IndexPath) -> UICollectionReusableView
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__dequeueConfiguredReusableSupplementaryView(with:for:)")
  func __dequeueConfiguredReusableSupplementaryViewWithRegistration(_ registration: __UICollectionViewSupplementaryRegistration, forIndexPath indexPath: IndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  var indexPathsForSelectedItems: [IndexPath]? { get }
  func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition)
  @available(swift, obsoleted: 3, renamed: "selectItem(at:animated:scrollPosition:)")
  func selectItemAtIndexPath(_ indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition)
  func deselectItem(at indexPath: IndexPath, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "deselectItem(at:animated:)")
  func deselectItemAtIndexPath(_ indexPath: IndexPath, animated: Bool)
  @available(iOS 11.0, *)
  var hasUncommittedUpdates: Bool { get }
  func reloadData()
  func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool)
  @available(iOS 7.0, *)
  func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool) async -> Bool
  @available(iOS 7.0, *)
  func startInteractiveTransition(to layout: UICollectionViewLayout, completion: UICollectionView.LayoutInteractiveTransitionCompletion? = nil) -> UICollectionViewTransitionLayout
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "startInteractiveTransition(to:completion:)")
  func startInteractiveTransitionToCollectionViewLayout(_ layout: UICollectionViewLayout, completion: UICollectionView.LayoutInteractiveTransitionCompletion? = nil) -> UICollectionViewTransitionLayout
  @available(iOS 7.0, *)
  func finishInteractiveTransition()
  @available(iOS 7.0, *)
  func cancelInteractiveTransition()
  var numberOfSections: Int { get }
  func numberOfItems(inSection section: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "numberOfItems(inSection:)")
  func numberOfItemsInSection(_ section: Int) -> Int
  func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForItem(at:)")
  func layoutAttributesForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElement(ofKind kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(swift, obsoleted: 3, renamed: "layoutAttributesForSupplementaryElement(ofKind:at:)")
  func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItem(at point: CGPoint) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "indexPathForItem(at:)")
  func indexPathForItemAtPoint(_ point: CGPoint) -> IndexPath?
  func indexPath(for cell: UICollectionViewCell) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "indexPath(for:)")
  func indexPathForCell(_ cell: UICollectionViewCell) -> IndexPath?
  func cellForItem(at indexPath: IndexPath) -> UICollectionViewCell?
  @available(swift, obsoleted: 3, renamed: "cellForItem(at:)")
  func cellForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewCell?
  var visibleCells: [UICollectionViewCell] { get }
  var indexPathsForVisibleItems: [IndexPath] { get }
  @available(iOS 9.0, *)
  func supplementaryView(forElementKind elementKind: String, at indexPath: IndexPath) -> UICollectionReusableView?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "supplementaryView(forElementKind:at:)")
  func supplementaryViewForElementKind(_ elementKind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView?
  @available(iOS 9.0, *)
  func visibleSupplementaryViews(ofKind elementKind: String) -> [UICollectionReusableView]
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "visibleSupplementaryViews(ofKind:)")
  func visibleSupplementaryViewsOfKind(_ elementKind: String) -> [UICollectionReusableView]
  @available(iOS 9.0, *)
  func indexPathsForVisibleSupplementaryElements(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "indexPathsForVisibleSupplementaryElements(ofKind:)")
  func indexPathsForVisibleSupplementaryElementsOfKind(_ elementKind: String) -> [IndexPath]
  func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "scrollToItem(at:at:animated:)")
  func scrollToItemAtIndexPath(_ indexPath: IndexPath, atScrollPosition scrollPosition: UICollectionView.ScrollPosition, animated: Bool)
  func insertSections(_ sections: IndexSet)
  func deleteSections(_ sections: IndexSet)
  func reloadSections(_ sections: IndexSet)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertItems(at indexPaths: [IndexPath])
  @available(swift, obsoleted: 3, renamed: "insertItems(at:)")
  func insertItemsAtIndexPaths(_ indexPaths: [IndexPath])
  func deleteItems(at indexPaths: [IndexPath])
  @available(swift, obsoleted: 3, renamed: "deleteItems(at:)")
  func deleteItemsAtIndexPaths(_ indexPaths: [IndexPath])
  func reloadItems(at indexPaths: [IndexPath])
  @available(swift, obsoleted: 3, renamed: "reloadItems(at:)")
  func reloadItemsAtIndexPaths(_ indexPaths: [IndexPath])
  func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "moveItem(at:to:)")
  func moveItemAtIndexPath(_ indexPath: IndexPath, toIndexPath newIndexPath: IndexPath)
  func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  func performBatchUpdates(_ updates: (() -> Void)?) async -> Bool
  @available(iOS 9.0, *)
  func beginInteractiveMovementForItem(at indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "beginInteractiveMovementForItem(at:)")
  func beginInteractiveMovementForItemAtIndexPath(_ indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  func updateInteractiveMovementTargetPosition(_ targetPosition: CGPoint)
  @available(iOS 9.0, *)
  func endInteractiveMovement()
  @available(iOS 9.0, *)
  func cancelInteractiveMovement()
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  @available(iOS 14.0, *)
  var selectionFollowsFocus: Bool
  @available(iOS 11.0, *)
  var hasActiveDrag: Bool { get }
  @available(iOS 11.0, *)
  var hasActiveDrop: Bool { get }
  @available(iOS 14.0, *)
  var isEditing: Bool
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "isEditing")
  var editing: Bool
  @available(iOS 14.0, *)
  var allowsSelectionDuringEditing: Bool
  @available(iOS 14.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 11.0, *)
  func presentationSectionIndex(forDataSourceSectionIndex dataSourceSectionIndex: Int) -> Int
  @available(iOS 11.0, *)
  func dataSourceSectionIndex(forPresentationSectionIndex presentationSectionIndex: Int) -> Int
  @available(iOS 11.0, *)
  func presentationIndexPath(forDataSourceIndexPath dataSourceIndexPath: IndexPath?) -> IndexPath?
  @available(iOS 11.0, *)
  func dataSourceIndexPath(forPresentationIndexPath presentationIndexPath: IndexPath?) -> IndexPath?
  @available(iOS 11.0, *)
  func performUsingPresentationValues(_ actionsToTranslate: () -> Void)
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionView {
  struct CellRegistration<Cell, Item> where Cell : UICollectionViewCell {
    typealias Handler = (Cell, IndexPath, Item) -> Void
    init(handler: @escaping UICollectionView.CellRegistration<Cell, Item>.Handler)
    init(cellNib: UINib, handler: @escaping UICollectionView.CellRegistration<Cell, Item>.Handler)
  }
  struct SupplementaryRegistration<Supplementary> where Supplementary : UICollectionReusableView {
    typealias Handler = (Supplementary, String, IndexPath) -> Void
    init(elementKind: String, handler: @escaping UICollectionView.SupplementaryRegistration<Supplementary>.Handler)
    init(supplementaryNib: UINib, elementKind: String, handler: @escaping UICollectionView.SupplementaryRegistration<Supplementary>.Handler)
  }
  func dequeueConfiguredReusableCell<Cell, Item>(using registration: UICollectionView.CellRegistration<Cell, Item>, for indexPath: IndexPath, item: Item?) -> Cell where Cell : UICollectionViewCell
  func dequeueConfiguredReusableSupplementary<Supplementary>(using registration: UICollectionView.SupplementaryRegistration<Supplementary>, for indexPath: IndexPath) -> Supplementary where Supplementary : UICollectionReusableView
}
extension UICollectionView : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
@available(iOS 11.0, *)
protocol UICollectionViewDragDelegate : NSObjectProtocol {
  func collectionView(_ collectionView: UICollectionView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem]
  @available(swift, obsoleted: 3, renamed: "collectionView(_:itemsForBeginning:at:)")
  func collectionView(_ collectionView: UICollectionView, itemsForBeginningDragSession session: UIDragSession, atIndexPath indexPath: IndexPath) -> [UIDragItem]
  optional func collectionView(_ collectionView: UICollectionView, itemsForAddingTo session: UIDragSession, at indexPath: IndexPath, point: CGPoint) -> [UIDragItem]
  @available(swift, obsoleted: 3, renamed: "collectionView(_:itemsForAddingTo:at:point:)")
  optional func collectionView(_ collectionView: UICollectionView, itemsForAddingToDragSession session: UIDragSession, atIndexPath indexPath: IndexPath, point: CGPoint) -> [UIDragItem]
  optional func collectionView(_ collectionView: UICollectionView, dragPreviewParametersForItemAt indexPath: IndexPath) -> UIDragPreviewParameters?
  @available(swift, obsoleted: 3, renamed: "collectionView(_:dragPreviewParametersForItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, dragPreviewParametersForItemAtIndexPath indexPath: IndexPath) -> UIDragPreviewParameters?
  optional func collectionView(_ collectionView: UICollectionView, dragSessionWillBegin session: UIDragSession)
  optional func collectionView(_ collectionView: UICollectionView, dragSessionDidEnd session: UIDragSession)
  optional func collectionView(_ collectionView: UICollectionView, dragSessionAllowsMoveOperation session: UIDragSession) -> Bool
  optional func collectionView(_ collectionView: UICollectionView, dragSessionIsRestrictedToDraggingApplication session: UIDragSession) -> Bool
}
@available(iOS 11.0, *)
protocol UICollectionViewDropDelegate : NSObjectProtocol {
  func collectionView(_ collectionView: UICollectionView, performDropWith coordinator: UICollectionViewDropCoordinator)
  @available(swift, obsoleted: 3, renamed: "collectionView(_:performDropWith:)")
  func collectionView(_ collectionView: UICollectionView, performDropWithCoordinator coordinator: UICollectionViewDropCoordinator)
  optional func collectionView(_ collectionView: UICollectionView, canHandle session: UIDropSession) -> Bool
  @available(swift, obsoleted: 3, renamed: "collectionView(_:canHandle:)")
  optional func collectionView(_ collectionView: UICollectionView, canHandleDropSession session: UIDropSession) -> Bool
  optional func collectionView(_ collectionView: UICollectionView, dropSessionDidEnter session: UIDropSession)
  optional func collectionView(_ collectionView: UICollectionView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UICollectionViewDropProposal
  optional func collectionView(_ collectionView: UICollectionView, dropSessionDidExit session: UIDropSession)
  optional func collectionView(_ collectionView: UICollectionView, dropSessionDidEnd session: UIDropSession)
  optional func collectionView(_ collectionView: UICollectionView, dropPreviewParametersForItemAt indexPath: IndexPath) -> UIDragPreviewParameters?
  @available(swift, obsoleted: 3, renamed: "collectionView(_:dropPreviewParametersForItemAt:)")
  optional func collectionView(_ collectionView: UICollectionView, dropPreviewParametersForItemAtIndexPath indexPath: IndexPath) -> UIDragPreviewParameters?
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollectionViewDropProposal.Intent")
typealias UICollectionViewDropIntent = UICollectionViewDropProposal.Intent
extension UICollectionViewDropProposal {
  @available(iOS 11.0, *)
  enum Intent : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unspecified
    @available(swift, obsoleted: 3, renamed: "unspecified")
    static var Unspecified: UICollectionViewDropProposal.Intent { get }
    case insertAtDestinationIndexPath
    @available(swift, obsoleted: 3, renamed: "insertAtDestinationIndexPath")
    static var InsertAtDestinationIndexPath: UICollectionViewDropProposal.Intent { get }
    case insertIntoDestinationIndexPath
    @available(swift, obsoleted: 3, renamed: "insertIntoDestinationIndexPath")
    static var InsertIntoDestinationIndexPath: UICollectionViewDropProposal.Intent { get }
  }
}
@available(iOS 11.0, *)
class UICollectionViewDropProposal : UIDropProposal {
  init(operation: UIDropOperation, intent: UICollectionViewDropProposal.Intent)
  @available(swift, obsoleted: 3, renamed: "init(operation:intent:)")
  init(dropOperation operation: UIDropOperation, intent: UICollectionViewDropProposal.Intent)
  var intent: UICollectionViewDropProposal.Intent { get }
  init(operation: UIDropOperation)
  @available(*, unavailable)
  convenience init()
}
@available(iOS 11.0, *)
protocol UICollectionViewDropCoordinator : NSObjectProtocol {
  var items: [UICollectionViewDropItem] { get }
  var destinationIndexPath: IndexPath? { get }
  var proposal: UICollectionViewDropProposal { get }
  var session: UIDropSession { get }
  func drop(_ dragItem: UIDragItem, to placeholder: UICollectionViewDropPlaceholder) -> UICollectionViewDropPlaceholderContext
  @available(swift, obsoleted: 3, renamed: "drop(_:to:)")
  func dropItem(_ dragItem: UIDragItem, toPlaceholder placeholder: UICollectionViewDropPlaceholder) -> UICollectionViewDropPlaceholderContext
  func drop(_ dragItem: UIDragItem, toItemAt indexPath: IndexPath) -> UIDragAnimating
  @available(swift, obsoleted: 3, renamed: "drop(_:toItemAt:)")
  func dropItem(_ dragItem: UIDragItem, toItemAtIndexPath indexPath: IndexPath) -> UIDragAnimating
  func drop(_ dragItem: UIDragItem, intoItemAt indexPath: IndexPath, rect: CGRect) -> UIDragAnimating
  @available(swift, obsoleted: 3, renamed: "drop(_:intoItemAt:rect:)")
  func dropItem(_ dragItem: UIDragItem, intoItemAtIndexPath indexPath: IndexPath, rect: CGRect) -> UIDragAnimating
  func drop(_ dragItem: UIDragItem, to target: UIDragPreviewTarget) -> UIDragAnimating
  @available(swift, obsoleted: 3, renamed: "drop(_:to:)")
  func dropItem(_ dragItem: UIDragItem, toTarget target: UIDragPreviewTarget) -> UIDragAnimating
}
@available(iOS 11.0, *)
class UICollectionViewPlaceholder : NSObject {
  init(insertionIndexPath: IndexPath, reuseIdentifier: String)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var cellUpdateHandler: ((UICollectionViewCell) -> Void)?
}
@available(iOS 11.0, *)
class UICollectionViewDropPlaceholder : UICollectionViewPlaceholder {
  var previewParametersProvider: ((UICollectionViewCell) -> UIDragPreviewParameters?)?
  init(insertionIndexPath: IndexPath, reuseIdentifier: String)
  @available(*, unavailable)
  convenience init()
}
@available(iOS 11.0, *)
protocol UICollectionViewDropItem : NSObjectProtocol {
  var dragItem: UIDragItem { get }
  var sourceIndexPath: IndexPath? { get }
  var previewSize: CGSize { get }
}
@available(iOS 11.0, *)
protocol UICollectionViewDropPlaceholderContext : UIDragAnimating {
  var dragItem: UIDragItem { get }
  func commitInsertion(dataSourceUpdates: (IndexPath) -> Void) -> Bool
  @available(swift, obsoleted: 3, renamed: "commitInsertion(dataSourceUpdates:)")
  func commitInsertionWithDataSourceUpdates(_ dataSourceUpdates: (IndexPath) -> Void) -> Bool
  func deletePlaceholder() -> Bool
  func setNeedsCellUpdate()
}
