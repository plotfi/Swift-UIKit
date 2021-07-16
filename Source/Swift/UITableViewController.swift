@_exported import Foundation

@available(iOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableView.Style)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  var tableView: UITableView!
  @available(iOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 6.0, *)
  var refreshControl: UIRefreshControl?
  convenience init()
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func tableView(_ tableView: UITableView, accessoryTypeForRowWith indexPath: IndexPath) -> UITableViewCell.AccessoryType
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String?
  @available(iOS, introduced: 8.0, deprecated: 13.0)
  func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
  @available(iOS 11.0, *)
  func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 11.0, *)
  func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?)
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath?
  @available(iOS 11.0, *)
  func tableView(_ tableView: UITableView, shouldSpringLoadRowAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath)
  @available(iOS 13.0, *)
  func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView)

  /**
   * @abstract Called when the interaction begins.
   *
   * @param tableView  This UITableView.
   * @param indexPath  IndexPath of the row for which a configuration is being requested.
   * @param point      Location of the interaction in the table view's coordinate space
   *
   * @return A UIContextMenuConfiguration describing the menu to be presented. Return nil to prevent the interaction from beginning.
   *         Returning an empty configuration causes the interaction to begin then fail with a cancellation effect. You might use this
   *         to indicate to users that it's possible for a menu to be presented from this element, but that there are no actions to
   *         present at this particular time.
   */
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?

  /**
   * @abstract Called when the interaction begins. Return a UITargetedPreview to override the default preview created by the table view.
   *
   * @param tableView      This UITableView.
   * @param configuration  The configuration of the menu about to be displayed by this interaction.
   */
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to dismiss. Return a UITargetedPreview describing the desired dismissal target.
   * The interaction will animate the presented menu to the target. Use this to customize the dismissal animation.
   *
   * @param tableView      This UITableView.
   * @param configuration  The configuration of the menu displayed by this interaction.
   */
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param tableView      This UITableView.
   * @param configuration  Configuration of the currently displayed menu.
   * @param animator       Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  @available(iOS 13.0, *)
  func tableView(_ tableView: UITableView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the table view is about to display a menu.
   *
   * @param tableView       This UITableView.
   * @param configuration   The configuration of the menu about to be displayed.
   * @param animator        Appearance animator. Add animations to run them alongside the appearance transition.
   */
  @available(iOS 14.0, *)
  func tableView(_ tableView: UITableView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the table view's context menu interaction is about to end.
   *
   * @param tableView       This UITableView.
   * @param configuration   Ending configuration.
   * @param animator        Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  @available(iOS 14.0, *)
  func tableView(_ tableView: UITableView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
  @available(iOS 2.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(iOS 11.0, *)
  func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSections(in tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitles(for tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
