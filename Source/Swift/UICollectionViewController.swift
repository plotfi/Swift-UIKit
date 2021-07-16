@_exported import Foundation

@available(iOS 6.0, *)
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  var collectionView: UICollectionView!
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 7.0, *)
  var useLayoutToLayoutNavigationTransitions: Bool
  @available(iOS 7.0, *)
  var collectionViewLayout: UICollectionViewLayout { get }
  @available(iOS 9.0, *)
  var installsStandardGestureForInteractiveMovement: Bool
  convenience init()
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath)
  @available(iOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(iOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath)
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?)
  @available(iOS 7.0, *)
  func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> IndexPath?
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(iOS 14.0, *)
  func collectionView(_ collectionView: UICollectionView, canEditItemAt indexPath: IndexPath) -> Bool
  @available(iOS 11.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldSpringLoadItemAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath)
  @available(iOS 13.0, *)
  func collectionViewDidEndMultipleSelectionInteraction(_ collectionView: UICollectionView)

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
  func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?

  /**
   * @abstract Called when the interaction begins. Return a UITargetedPreview describing the desired highlight preview.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   The configuration of the menu about to be displayed by this interaction.
   */
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to dismiss. Return a UITargetedPreview describing the desired dismissal target.
   * The interaction will animate the presented menu to the target. Use this to customize the dismissal animation.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   The configuration of the menu displayed by this interaction.
   */
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   Configuration of the currently displayed menu.
   * @param animator        Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  @available(iOS 13.0, *)
  func collectionView(_ collectionView: UICollectionView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the collection view is about to display a menu.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   The configuration of the menu about to be displayed.
   * @param animator        Appearance animator. Add animations to run them alongside the appearance transition.
   */
  @available(iOS 13.2, *)
  func collectionView(_ collectionView: UICollectionView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the collection view's context menu interaction is about to end.
   *
   * @param collectionView  This UICollectionView.
   * @param configuration   Ending configuration.
   * @param animator        Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  @available(iOS 13.2, *)
  func collectionView(_ collectionView: UICollectionView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
  @available(iOS 6.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 6.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 6.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(iOS 6.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(iOS 6.0, *)
  func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(iOS 6.0, *)
  func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(iOS 11.0, *)
  func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
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
