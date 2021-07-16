@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UITableView.Style")
typealias UITableViewStyle = UITableView.Style
extension UITableView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case plain
    @available(swift, obsoleted: 3, renamed: "plain")
    static var Plain: UITableView.Style { get }
    case grouped
    @available(swift, obsoleted: 3, renamed: "grouped")
    static var Grouped: UITableView.Style { get }
    @available(iOS 13.0, *)
    case insetGrouped
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "insetGrouped")
    static var InsetGrouped: UITableView.Style { get }
  }
  enum ScrollPosition : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITableView.ScrollPosition { get }
    case top
    @available(swift, obsoleted: 3, renamed: "top")
    static var Top: UITableView.ScrollPosition { get }
    case middle
    @available(swift, obsoleted: 3, renamed: "middle")
    static var Middle: UITableView.ScrollPosition { get }
    case bottom
    @available(swift, obsoleted: 3, renamed: "bottom")
    static var Bottom: UITableView.ScrollPosition { get }
  }
  enum RowAnimation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case fade
    @available(swift, obsoleted: 3, renamed: "fade")
    static var Fade: UITableView.RowAnimation { get }
    case right
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UITableView.RowAnimation { get }
    case left
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UITableView.RowAnimation { get }
    case top
    @available(swift, obsoleted: 3, renamed: "top")
    static var Top: UITableView.RowAnimation { get }
    case bottom
    @available(swift, obsoleted: 3, renamed: "bottom")
    static var Bottom: UITableView.RowAnimation { get }
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITableView.RowAnimation { get }
    case middle
    @available(swift, obsoleted: 3, renamed: "middle")
    static var Middle: UITableView.RowAnimation { get }
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UITableView.RowAnimation { get }
  }
  @available(iOS 3.0, *)
  class let indexSearch: String
  @available(iOS 5.0, *)
  class let automaticDimension: CGFloat
  class let selectionDidChangeNotification: NSNotification.Name
  @available(iOS 11.0, *)
  enum SeparatorInsetReference : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case fromCellEdges
    @available(swift, obsoleted: 3, renamed: "fromCellEdges")
    static var FromCellEdges: UITableView.SeparatorInsetReference { get }
    case fromAutomaticInsets
    @available(swift, obsoleted: 3, renamed: "fromAutomaticInsets")
    static var FromAutomaticInsets: UITableView.SeparatorInsetReference { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UITableView.ScrollPosition")
typealias UITableViewScrollPosition = UITableView.ScrollPosition
@available(swift, obsoleted: 4.2, renamed: "UITableView.RowAnimation")
typealias UITableViewRowAnimation = UITableView.RowAnimation
@available(iOS 3.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITableView.indexSearch")
let UITableViewIndexSearch: String
@available(iOS 5.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITableView.automaticDimension")
let UITableViewAutomaticDimension: CGFloat
@available(swift, obsoleted: 4.2, renamed: "UITableViewRowAction.Style")
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "Use UIContextualAction and related APIs instead.")
typealias UITableViewRowActionStyle = UITableViewRowAction.Style
extension UITableViewRowAction {
  @available(iOS, introduced: 8.0, deprecated: 13.0, message: "Use UIContextualAction and related APIs instead.")
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UITableViewRowAction.Style { get }
    static var destructive: UITableViewRowAction.Style { get }
    case normal
    @available(swift, obsoleted: 3, renamed: "normal")
    static var Normal: UITableViewRowAction.Style { get }
  }
}
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "Use UIContextualAction and related APIs instead.")
class UITableViewRowAction : NSObject, NSCopying {
  convenience init(style: UITableViewRowAction.Style, title: String?, handler: @escaping (UITableViewRowAction, IndexPath) -> Void)
  @available(*, unavailable, renamed: "init(style:title:handler:)", message: "Not available in Swift")
  class func rowActionWithStyle(_ style: UITableViewRowAction.Style, title: String?, handler: @escaping (UITableViewRowAction, IndexPath) -> Void) -> Self
  var style: UITableViewRowAction.Style { get }
  var title: String?
  @NSCopying var backgroundColor: UIColor?
  @NSCopying var backgroundEffect: UIVisualEffect?
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
  init()
}
protocol UITableViewDelegate : UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "tableView(_:willDisplay:forRowAt:)")
  optional func tableView(_ tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didEndDisplaying:forRowAt:)")
  optional func tableView(_ tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "tableView(_:heightForRowAt:)")
  optional func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:estimatedHeightForRowAt:)")
  optional func tableView(_ tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: IndexPath) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  optional func tableView(_ tableView: UITableView, accessoryTypeForRowWith indexPath: IndexPath) -> UITableViewCell.AccessoryType
  @available(swift, obsoleted: 3, renamed: "tableView(_:accessoryTypeForRowWith:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  optional func tableView(_ tableView: UITableView, accessoryTypeForRowWithIndexPath indexPath: IndexPath) -> UITableViewCell.AccessoryType
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "tableView(_:accessoryButtonTappedForRowWith:)")
  optional func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:shouldHighlightRowAt:)")
  optional func tableView(_ tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didHighlightRowAt:)")
  optional func tableView(_ tableView: UITableView, didHighlightRowAtIndexPath indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didUnhighlightRowAt:)")
  optional func tableView(_ tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: IndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "tableView(_:willSelectRowAt:)")
  optional func tableView(_ tableView: UITableView, willSelectRowAtIndexPath indexPath: IndexPath) -> IndexPath?
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:willDeselectRowAt:)")
  optional func tableView(_ tableView: UITableView, willDeselectRowAtIndexPath indexPath: IndexPath) -> IndexPath?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didSelectRowAt:)")
  optional func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath)
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didDeselectRowAt:)")
  optional func tableView(_ tableView: UITableView, didDeselectRowAtIndexPath indexPath: IndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
  @available(swift, obsoleted: 3, renamed: "tableView(_:editingStyleForRowAt:)")
  optional func tableView(_ tableView: UITableView, editingStyleForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell.EditingStyle
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String?
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:titleForDeleteConfirmationButtonForRowAt:)")
  optional func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: IndexPath) -> String?
  @available(iOS, introduced: 8.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
  @available(swift, obsoleted: 3, renamed: "tableView(_:editActionsForRowAt:)")
  @available(iOS, introduced: 8.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, editActionsForRowAtIndexPath indexPath: IndexPath) -> [UITableViewRowAction]?
  @available(iOS 11.0, *)
  optional func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:leadingSwipeActionsConfigurationForRowAt:)")
  optional func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAtIndexPath indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 11.0, *)
  optional func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:trailingSwipeActionsConfigurationForRowAt:)")
  optional func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAtIndexPath indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "tableView(_:shouldIndentWhileEditingRowAt:)")
  optional func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "tableView(_:willBeginEditingRowAt:)")
  optional func tableView(_ tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: IndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didEndEditingRowAt:)")
  optional func tableView(_ tableView: UITableView, didEndEditingRowAtIndexPath indexPath: IndexPath?)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(swift, obsoleted: 3, renamed: "tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)")
  optional func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  @available(swift, obsoleted: 3, renamed: "tableView(_:indentationLevelForRowAt:)")
  optional func tableView(_ tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: IndexPath) -> Int
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "tableView(_:shouldShowMenuForRowAt:)")
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(swift, obsoleted: 3, renamed: "tableView(_:canPerformAction:forRowAt:withSender:)")
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?)
  @available(swift, obsoleted: 3, renamed: "tableView(_:performAction:forRowAt:withSender:)")
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: IndexPath, withSender sender: Any?)
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:canFocusRowAt:)")
  optional func tableView(_ tableView: UITableView, canFocusRowAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:shouldUpdateFocusIn:)")
  optional func tableView(_ tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didUpdateFocusIn:with:)")
  optional func tableView(_ tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "indexPathForPreferredFocusedView(in:)")
  optional func indexPathForPreferredFocusedViewInTableView(_ tableView: UITableView) -> IndexPath?
  @available(iOS 11.0, *)
  optional func tableView(_ tableView: UITableView, shouldSpringLoadRowAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:shouldSpringLoadRowAt:with:)")
  optional func tableView(_ tableView: UITableView, shouldSpringLoadRowAtIndexPath indexPath: IndexPath, withContext context: UISpringLoadedInteractionContext) -> Bool
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:shouldBeginMultipleSelectionInteractionAt:)")
  optional func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:didBeginMultipleSelectionInteractionAt:)")
  optional func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAtIndexPath indexPath: IndexPath)
  @available(iOS 13.0, *)
  optional func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView)

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
  optional func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?

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
  @available(swift, obsoleted: 3, renamed: "tableView(_:contextMenuConfigurationForRowAt:point:)")
  optional func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAtIndexPath indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?

  /**
   * @abstract Called when the interaction begins. Return a UITargetedPreview to override the default preview created by the table view.
   *
   * @param tableView      This UITableView.
   * @param configuration  The configuration of the menu about to be displayed by this interaction.
   */
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to dismiss. Return a UITargetedPreview describing the desired dismissal target.
   * The interaction will animate the presented menu to the target. Use this to customize the dismissal animation.
   *
   * @param tableView      This UITableView.
   * @param configuration  The configuration of the menu displayed by this interaction.
   */
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param tableView      This UITableView.
   * @param configuration  Configuration of the currently displayed menu.
   * @param animator       Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param tableView      This UITableView.
   * @param configuration  Configuration of the currently displayed menu.
   * @param animator       Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:willPerformPreviewActionForMenuWith:animator:)")
  optional func tableView(_ tableView: UITableView, willPerformPreviewActionForMenuWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the table view is about to display a menu.
   *
   * @param tableView       This UITableView.
   * @param configuration   The configuration of the menu about to be displayed.
   * @param animator        Appearance animator. Add animations to run them alongside the appearance transition.
   */
  @available(iOS 14.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the table view is about to display a menu.
   *
   * @param tableView       This UITableView.
   * @param configuration   The configuration of the menu about to be displayed.
   * @param animator        Appearance animator. Add animations to run them alongside the appearance transition.
   */
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:willDisplayContextMenu:animator:)")
  optional func tableView(_ tableView: UITableView, willDisplayContextMenuWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the table view's context menu interaction is about to end.
   *
   * @param tableView       This UITableView.
   * @param configuration   Ending configuration.
   * @param animator        Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  @available(iOS 14.0, *)
  optional func tableView(_ tableView: UITableView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the table view's context menu interaction is about to end.
   *
   * @param tableView       This UITableView.
   * @param configuration   Ending configuration.
   * @param animator        Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "tableView(_:willEndContextMenuInteraction:animator:)")
  optional func tableView(_ tableView: UITableView, willEndContextMenuInteractionWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
}
@available(swift, obsoleted: 3, renamed: "UITableView.selectionDidChangeNotification")
let UITableViewSelectionDidChangeNotification: NSNotification.Name
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITableView.SeparatorInsetReference")
typealias UITableViewSeparatorInsetReference = UITableView.SeparatorInsetReference
@available(iOS 2.0, *)
class UITableView : UIScrollView, NSCoding, UIDataSourceTranslating {
  init(frame: CGRect, style: UITableView.Style)
  init?(coder: NSCoder)
  var style: UITableView.Style { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  weak var delegate: @sil_weak UITableViewDelegate?
  @available(iOS 10.0, *)
  weak var prefetchDataSource: @sil_weak UITableViewDataSourcePrefetching?
  @available(iOS 11.0, *)
  weak var dragDelegate: @sil_weak UITableViewDragDelegate?
  @available(iOS 11.0, *)
  weak var dropDelegate: @sil_weak UITableViewDropDelegate?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(iOS 11.0, *)
  var separatorInsetReference: UITableView.SeparatorInsetReference
  @available(iOS 3.2, *)
  var backgroundView: UIView?
  @available(iOS, unavailable)
  var contextMenuInteraction: UIContextMenuInteraction? { get }
  var numberOfSections: Int { get }
  func numberOfRows(inSection section: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "numberOfRows(inSection:)")
  func numberOfRowsInSection(_ section: Int) -> Int
  func rect(forSection section: Int) -> CGRect
  @available(swift, obsoleted: 3, renamed: "rect(forSection:)")
  func rectForSection(_ section: Int) -> CGRect
  func rectForHeader(inSection section: Int) -> CGRect
  @available(swift, obsoleted: 3, renamed: "rectForHeader(inSection:)")
  func rectForHeaderInSection(_ section: Int) -> CGRect
  func rectForFooter(inSection section: Int) -> CGRect
  @available(swift, obsoleted: 3, renamed: "rectForFooter(inSection:)")
  func rectForFooterInSection(_ section: Int) -> CGRect
  func rectForRow(at indexPath: IndexPath) -> CGRect
  @available(swift, obsoleted: 3, renamed: "rectForRow(at:)")
  func rectForRowAtIndexPath(_ indexPath: IndexPath) -> CGRect
  func indexPathForRow(at point: CGPoint) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "indexPathForRow(at:)")
  func indexPathForRowAtPoint(_ point: CGPoint) -> IndexPath?
  func indexPath(for cell: UITableViewCell) -> IndexPath?
  @available(swift, obsoleted: 3, renamed: "indexPath(for:)")
  func indexPathForCell(_ cell: UITableViewCell) -> IndexPath?
  func indexPathsForRows(in rect: CGRect) -> [IndexPath]?
  @available(swift, obsoleted: 3, renamed: "indexPathsForRows(in:)")
  func indexPathsForRowsInRect(_ rect: CGRect) -> [IndexPath]?
  func cellForRow(at indexPath: IndexPath) -> UITableViewCell?
  @available(swift, obsoleted: 3, renamed: "cellForRow(at:)")
  func cellForRowAtIndexPath(_ indexPath: IndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [IndexPath]? { get }
  @available(iOS 6.0, *)
  func headerView(forSection section: Int) -> UITableViewHeaderFooterView?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "headerView(forSection:)")
  func headerViewForSection(_ section: Int) -> UITableViewHeaderFooterView?
  @available(iOS 6.0, *)
  func footerView(forSection section: Int) -> UITableViewHeaderFooterView?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "footerView(forSection:)")
  func footerViewForSection(_ section: Int) -> UITableViewHeaderFooterView?
  func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "scrollToRow(at:at:animated:)")
  func scrollToRowAtIndexPath(_ indexPath: IndexPath, atScrollPosition scrollPosition: UITableView.ScrollPosition, animated: Bool)
  func scrollToNearestSelectedRow(at scrollPosition: UITableView.ScrollPosition, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "scrollToNearestSelectedRow(at:animated:)")
  func scrollToNearestSelectedRowAtScrollPosition(_ scrollPosition: UITableView.ScrollPosition, animated: Bool)
  @available(iOS 11.0, *)
  func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 11.0, *)
  func performBatchUpdates(_ updates: (() -> Void)?) async -> Bool
  func beginUpdates()
  func endUpdates()
  func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  @available(swift, obsoleted: 3, renamed: "insertSections(_:with:)")
  func insertSections(_ sections: IndexSet, withRowAnimation animation: UITableView.RowAnimation)
  func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  @available(swift, obsoleted: 3, renamed: "deleteSections(_:with:)")
  func deleteSections(_ sections: IndexSet, withRowAnimation animation: UITableView.RowAnimation)
  @available(iOS 3.0, *)
  func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "reloadSections(_:with:)")
  func reloadSections(_ sections: IndexSet, withRowAnimation animation: UITableView.RowAnimation)
  @available(iOS 5.0, *)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  @available(swift, obsoleted: 3, renamed: "insertRows(at:with:)")
  func insertRowsAtIndexPaths(_ indexPaths: [IndexPath], withRowAnimation animation: UITableView.RowAnimation)
  func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  @available(swift, obsoleted: 3, renamed: "deleteRows(at:with:)")
  func deleteRowsAtIndexPaths(_ indexPaths: [IndexPath], withRowAnimation animation: UITableView.RowAnimation)
  @available(iOS 3.0, *)
  func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "reloadRows(at:with:)")
  func reloadRowsAtIndexPaths(_ indexPaths: [IndexPath], withRowAnimation animation: UITableView.RowAnimation)
  @available(iOS 5.0, *)
  func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "moveRow(at:to:)")
  func moveRowAtIndexPath(_ indexPath: IndexPath, toIndexPath newIndexPath: IndexPath)
  @available(iOS 11.0, *)
  var hasUncommittedUpdates: Bool { get }
  func reloadData()
  @available(iOS 3.0, *)
  func reloadSectionIndexTitles()
  var isEditing: Bool
  @available(swift, obsoleted: 3, renamed: "isEditing")
  var editing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  @available(iOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: IndexPath? { get }
  @available(iOS 5.0, *)
  var indexPathsForSelectedRows: [IndexPath]? { get }
  func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition)
  @available(swift, obsoleted: 3, renamed: "selectRow(at:animated:scrollPosition:)")
  func selectRowAtIndexPath(_ indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition)
  func deselectRow(at indexPath: IndexPath, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "deselectRow(at:animated:)")
  func deselectRowAtIndexPath(_ indexPath: IndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(iOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(iOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(iOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  var separatorStyle: UITableViewCell.SeparatorStyle
  var separatorColor: UIColor?
  @available(iOS 8.0, *)
  @NSCopying var separatorEffect: UIVisualEffect?
  @available(iOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  @available(iOS 11.0, *)
  var insetsContentViewsToSafeArea: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCell(withIdentifier identifier: String) -> UITableViewCell?
  @available(swift, obsoleted: 3, renamed: "dequeueReusableCell(withIdentifier:)")
  func dequeueReusableCellWithIdentifier(_ identifier: String) -> UITableViewCell?
  @available(iOS 6.0, *)
  func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "dequeueReusableCell(withIdentifier:for:)")
  func dequeueReusableCellWithIdentifier(_ identifier: String, forIndexPath indexPath: IndexPath) -> UITableViewCell
  @available(iOS 6.0, *)
  func dequeueReusableHeaderFooterView(withIdentifier identifier: String) -> UITableViewHeaderFooterView?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "dequeueReusableHeaderFooterView(withIdentifier:)")
  func dequeueReusableHeaderFooterViewWithIdentifier(_ identifier: String) -> UITableViewHeaderFooterView?
  @available(iOS 5.0, *)
  func register(_ nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "register(_:forCellReuseIdentifier:)")
  func registerNib(_ nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "register(_:forCellReuseIdentifier:)")
  func registerClass(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "register(_:forHeaderFooterViewReuseIdentifier:)")
  func registerNib(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "register(_:forHeaderFooterViewReuseIdentifier:)")
  func registerClass(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  @available(iOS 14.0, *)
  var selectionFollowsFocus: Bool
  @available(iOS 11.0, *)
  var dragInteractionEnabled: Bool
  @available(iOS 11.0, *)
  var hasActiveDrag: Bool { get }
  @available(iOS 11.0, *)
  var hasActiveDrop: Bool { get }
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
extension UITableView : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(swift, obsoleted: 3, renamed: "tableView(_:cellForRowAt:)")
  func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  optional func numberOfSections(in tableView: UITableView) -> Int
  @available(swift, obsoleted: 3, renamed: "numberOfSections(in:)")
  optional func numberOfSectionsInTableView(_ tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "tableView(_:canEditRowAt:)")
  optional func tableView(_ tableView: UITableView, canEditRowAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(swift, obsoleted: 3, renamed: "tableView(_:canMoveRowAt:)")
  optional func tableView(_ tableView: UITableView, canMoveRowAtIndexPath indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func sectionIndexTitles(for tableView: UITableView) -> [String]?
  @available(swift, obsoleted: 3, renamed: "sectionIndexTitles(for:)")
  optional func sectionIndexTitlesForTableView(_ tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "tableView(_:sectionForSectionIndexTitle:at:)")
  optional func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "tableView(_:commit:forRowAt:)")
  optional func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCell.EditingStyle, forRowAtIndexPath indexPath: IndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
  @available(swift, obsoleted: 3, renamed: "tableView(_:moveRowAt:to:)")
  optional func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: IndexPath, toIndexPath destinationIndexPath: IndexPath)
}
protocol UITableViewDataSourcePrefetching : NSObjectProtocol {
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath])
  @available(swift, obsoleted: 3, renamed: "tableView(_:prefetchRowsAt:)")
  func tableView(_ tableView: UITableView, prefetchRowsAtIndexPaths indexPaths: [IndexPath])
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, cancelPrefetchingForRowsAt indexPaths: [IndexPath])
  @available(swift, obsoleted: 3, renamed: "tableView(_:cancelPrefetchingForRowsAt:)")
  optional func tableView(_ tableView: UITableView, cancelPrefetchingForRowsAtIndexPaths indexPaths: [IndexPath])
}
@available(iOS 11.0, *)
protocol UITableViewDragDelegate : NSObjectProtocol {
  func tableView(_ tableView: UITableView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem]
  @available(swift, obsoleted: 3, renamed: "tableView(_:itemsForBeginning:at:)")
  func tableView(_ tableView: UITableView, itemsForBeginningDragSession session: UIDragSession, atIndexPath indexPath: IndexPath) -> [UIDragItem]
  optional func tableView(_ tableView: UITableView, itemsForAddingTo session: UIDragSession, at indexPath: IndexPath, point: CGPoint) -> [UIDragItem]
  @available(swift, obsoleted: 3, renamed: "tableView(_:itemsForAddingTo:at:point:)")
  optional func tableView(_ tableView: UITableView, itemsForAddingToDragSession session: UIDragSession, atIndexPath indexPath: IndexPath, point: CGPoint) -> [UIDragItem]
  optional func tableView(_ tableView: UITableView, dragPreviewParametersForRowAt indexPath: IndexPath) -> UIDragPreviewParameters?
  @available(swift, obsoleted: 3, renamed: "tableView(_:dragPreviewParametersForRowAt:)")
  optional func tableView(_ tableView: UITableView, dragPreviewParametersForRowAtIndexPath indexPath: IndexPath) -> UIDragPreviewParameters?
  optional func tableView(_ tableView: UITableView, dragSessionWillBegin session: UIDragSession)
  optional func tableView(_ tableView: UITableView, dragSessionDidEnd session: UIDragSession)
  optional func tableView(_ tableView: UITableView, dragSessionAllowsMoveOperation session: UIDragSession) -> Bool
  optional func tableView(_ tableView: UITableView, dragSessionIsRestrictedToDraggingApplication session: UIDragSession) -> Bool
}
@available(iOS 11.0, *)
protocol UITableViewDropDelegate : NSObjectProtocol {
  func tableView(_ tableView: UITableView, performDropWith coordinator: UITableViewDropCoordinator)
  @available(swift, obsoleted: 3, renamed: "tableView(_:performDropWith:)")
  func tableView(_ tableView: UITableView, performDropWithCoordinator coordinator: UITableViewDropCoordinator)
  optional func tableView(_ tableView: UITableView, canHandle session: UIDropSession) -> Bool
  @available(swift, obsoleted: 3, renamed: "tableView(_:canHandle:)")
  optional func tableView(_ tableView: UITableView, canHandleDropSession session: UIDropSession) -> Bool
  optional func tableView(_ tableView: UITableView, dropSessionDidEnter session: UIDropSession)
  optional func tableView(_ tableView: UITableView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UITableViewDropProposal
  optional func tableView(_ tableView: UITableView, dropSessionDidExit session: UIDropSession)
  optional func tableView(_ tableView: UITableView, dropSessionDidEnd session: UIDropSession)
  optional func tableView(_ tableView: UITableView, dropPreviewParametersForRowAt indexPath: IndexPath) -> UIDragPreviewParameters?
  @available(swift, obsoleted: 3, renamed: "tableView(_:dropPreviewParametersForRowAt:)")
  optional func tableView(_ tableView: UITableView, dropPreviewParametersForRowAtIndexPath indexPath: IndexPath) -> UIDragPreviewParameters?
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITableViewDropProposal.Intent")
typealias UITableViewDropIntent = UITableViewDropProposal.Intent
extension UITableViewDropProposal {
  @available(iOS 11.0, *)
  enum Intent : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unspecified
    @available(swift, obsoleted: 3, renamed: "unspecified")
    static var Unspecified: UITableViewDropProposal.Intent { get }
    case insertAtDestinationIndexPath
    @available(swift, obsoleted: 3, renamed: "insertAtDestinationIndexPath")
    static var InsertAtDestinationIndexPath: UITableViewDropProposal.Intent { get }
    case insertIntoDestinationIndexPath
    @available(swift, obsoleted: 3, renamed: "insertIntoDestinationIndexPath")
    static var InsertIntoDestinationIndexPath: UITableViewDropProposal.Intent { get }
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UITableViewDropProposal.Intent { get }
  }
}
@available(iOS 11.0, *)
class UITableViewDropProposal : UIDropProposal {
  init(operation: UIDropOperation, intent: UITableViewDropProposal.Intent)
  @available(swift, obsoleted: 3, renamed: "init(operation:intent:)")
  init(dropOperation operation: UIDropOperation, intent: UITableViewDropProposal.Intent)
  var intent: UITableViewDropProposal.Intent { get }
  init(operation: UIDropOperation)
  @available(*, unavailable)
  convenience init()
}
@available(iOS 11.0, *)
protocol UITableViewDropCoordinator : NSObjectProtocol {
  var items: [UITableViewDropItem] { get }
  var destinationIndexPath: IndexPath? { get }
  var proposal: UITableViewDropProposal { get }
  var session: UIDropSession { get }
  func drop(_ dragItem: UIDragItem, to placeholder: UITableViewDropPlaceholder) -> UITableViewDropPlaceholderContext
  @available(swift, obsoleted: 3, renamed: "drop(_:to:)")
  func dropItem(_ dragItem: UIDragItem, toPlaceholder placeholder: UITableViewDropPlaceholder) -> UITableViewDropPlaceholderContext
  func drop(_ dragItem: UIDragItem, toRowAt indexPath: IndexPath) -> UIDragAnimating
  @available(swift, obsoleted: 3, renamed: "drop(_:toRowAt:)")
  func dropItem(_ dragItem: UIDragItem, toRowAtIndexPath indexPath: IndexPath) -> UIDragAnimating
  func drop(_ dragItem: UIDragItem, intoRowAt indexPath: IndexPath, rect: CGRect) -> UIDragAnimating
  @available(swift, obsoleted: 3, renamed: "drop(_:intoRowAt:rect:)")
  func dropItem(_ dragItem: UIDragItem, intoRowAtIndexPath indexPath: IndexPath, rect: CGRect) -> UIDragAnimating
  func drop(_ dragItem: UIDragItem, to target: UIDragPreviewTarget) -> UIDragAnimating
  @available(swift, obsoleted: 3, renamed: "drop(_:to:)")
  func dropItem(_ dragItem: UIDragItem, toTarget target: UIDragPreviewTarget) -> UIDragAnimating
}
@available(iOS 11.0, *)
class UITableViewPlaceholder : NSObject {
  init(insertionIndexPath: IndexPath, reuseIdentifier: String, rowHeight: CGFloat)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var cellUpdateHandler: ((UITableViewCell) -> Void)?
}
@available(iOS 11.0, *)
class UITableViewDropPlaceholder : UITableViewPlaceholder {
  var previewParametersProvider: ((UITableViewCell) -> UIDragPreviewParameters?)?
  init(insertionIndexPath: IndexPath, reuseIdentifier: String, rowHeight: CGFloat)
  @available(*, unavailable)
  convenience init()
}
@available(iOS 11.0, *)
protocol UITableViewDropItem : NSObjectProtocol {
  var dragItem: UIDragItem { get }
  var sourceIndexPath: IndexPath? { get }
  var previewSize: CGSize { get }
}
@available(iOS 11.0, *)
protocol UITableViewDropPlaceholderContext : UIDragAnimating {
  var dragItem: UIDragItem { get }
  func commitInsertion(dataSourceUpdates: (IndexPath) -> Void) -> Bool
  @available(swift, obsoleted: 3, renamed: "commitInsertion(dataSourceUpdates:)")
  func commitInsertionWithDataSourceUpdates(_ dataSourceUpdates: (IndexPath) -> Void) -> Bool
  func deletePlaceholder() -> Bool
}
