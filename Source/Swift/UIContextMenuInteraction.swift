@_exported import Foundation

@available(iOS 13.0, *)
enum UIContextMenuInteractionCommitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case dismiss
  @available(swift, obsoleted: 3, renamed: "dismiss")
  static var Dismiss: UIContextMenuInteractionCommitStyle { get }
  case pop
  @available(swift, obsoleted: 3, renamed: "pop")
  static var Pop: UIContextMenuInteractionCommitStyle { get }
}
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIContextMenuInteraction.appearance")
typealias UIContextMenuInteractionAppearance = UIContextMenuInteraction.appearance
extension UIContextMenuInteraction {
  @available(iOS 14.0, *)
  enum appearance : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unknown
    @available(swift, obsoleted: 3, renamed: "unknown")
    static var Unknown: UIContextMenuInteraction.appearance { get }
    case rich
    @available(swift, obsoleted: 3, renamed: "rich")
    static var Rich: UIContextMenuInteraction.appearance { get }
    case compact
    @available(swift, obsoleted: 3, renamed: "compact")
    static var Compact: UIContextMenuInteraction.appearance { get }
  }
}
@available(iOS 13.0, *)
class UIContextMenuInteraction : NSObject, UIInteraction {

  /// The interaction's delegate.
  weak var delegate: @sil_weak UIContextMenuInteractionDelegate? { get }

  /// Appearance of the menu this interaction has presented or is about to present. Since it may be
  /// dependent on the user's input method, the appearance is only known while the interaction is active.
  @available(iOS 14.0, *)
  var menuAppearance: UIContextMenuInteraction.appearance { get }
  init(delegate: UIContextMenuInteractionDelegate)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self

  /**
   * @abstract Returns the interaction's location within the given view.
   *
   * @param view The view in which to locate the interaction.
   */
  func location(in view: UIView?) -> CGPoint

  /**
   * @abstract Returns the interaction's location within the given view.
   *
   * @param view The view in which to locate the interaction.
   */
  @available(swift, obsoleted: 3, renamed: "location(in:)")
  func locationInView(_ view: UIView?) -> CGPoint

  /**
   * @abstract Call to update the currently visible menu. This method does nothing if called before a menu is presented.
   *
   * @param block  Called with the a mutable copy of the currently visible menu. Modify and return this menu (or an entirely
   *               new one) to change the currently visible menu items.
   */
  @available(iOS 14.0, *)
  func updateVisibleMenu(_ block: (UIMenu) -> UIMenu)

  /**
   * @abstract Call to update the currently visible menu. This method does nothing if called before a menu is presented.
   *
   * @param block  Called with the a mutable copy of the currently visible menu. Modify and return this menu (or an entirely
   *               new one) to change the currently visible menu items.
   */
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "updateVisibleMenu(_:)")
  func updateVisibleMenuWithBlock(_ block: (UIMenu) -> UIMenu)

  /**
   * @abstract Dismisses the currently presented menu (if there is one).
   */
  func dismissMenu()
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
@available(iOS 13.0, *)
protocol UIContextMenuInteractionAnimating : NSObjectProtocol {

  /// Displayed preview view controller.
  var previewViewController: UIViewController? { get }
  func addAnimations(_ animations: @escaping () -> Void)
  func addCompletion(_ completion: @escaping () -> Void)
  func addCompletion() async
}
@available(iOS 13.0, *)
protocol UIContextMenuInteractionCommitAnimating : UIContextMenuInteractionAnimating {

  /// Preferred animation style for the menu's commit action. Triggered when the user taps the preview.
  var preferredCommitStyle: UIContextMenuInteractionCommitStyle { get set }
}
@available(iOS 13.0, *)
protocol UIContextMenuInteractionDelegate : NSObjectProtocol {

  /**
   * @abstract Called when the interaction begins.
   *
   * @param interaction  The UIContextMenuInteraction.
   * @param location     The location of the interaction in its view.
   *
   * @return A UIContextMenuConfiguration describing the menu to be presented. Return nil to prevent the interaction from beginning.
   *         Returning an empty configuration causes the interaction to begin then fail with a cancellation effect. You might use this
   *         to indicate to users that it's possible for a menu to be presented from this view, but that there are no actions to
   *         present at this particular time.
   */
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration?

  /**
   * @abstract Called when the interaction begins. Return a UITargetedPreview describing the desired highlight preview.
   *
   * @param interaction    The UIContextMenuInteraction requesting a highlighting preview.
   * @param configuration  The configuration of the menu about to be displayed by this interaction.
   */
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, previewForHighlightingMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to dismiss. Return a UITargetedPreview describing the desired dismissal target.
   * The interaction will animate the presented menu to the target. Use this to customize the dismissal animation.
   *
   * @param interaction    The UIContextMenuInteraction requesting a dismissal preview.
   * @param configuration  The configuration of the menu displayed by this interaction.
   *
   * @return Return a UITargetedPreview describing the desired dismissal target. Return nil to cause the menu to
   *         animate away without morphing into a specific view.
   */
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, previewForDismissingMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param interaction    The UIContextMenuInteraction.
   * @param configuration  Configuration of the currently displayed menu.
   * @param animator       Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the interaction is about to "commit" in response to the user tapping the preview.
   *
   * @param interaction    The UIContextMenuInteraction.
   * @param configuration  Configuration of the currently displayed menu.
   * @param animator       Commit animator. Add animations to this object to run them alongside the commit transition.
   */
  @available(swift, obsoleted: 3, renamed: "contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)")
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willPerformPreviewActionForMenuWithConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)

  /**
   * @abstract Called when the interaction is about to display a menu.
   *
   * @param interaction    The UIContextMenuInteraction.
   * @param configuration  The configuration of the menu about to be displayed by this interaction.
   * @param animator       Appearance animator. Add animations to run them alongside the appearance transition.
   */
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willDisplayMenuFor configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the interaction is about to display a menu.
   *
   * @param interaction    The UIContextMenuInteraction.
   * @param configuration  The configuration of the menu about to be displayed by this interaction.
   * @param animator       Appearance animator. Add animations to run them alongside the appearance transition.
   */
  @available(swift, obsoleted: 3, renamed: "contextMenuInteraction(_:willDisplayMenuFor:animator:)")
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willDisplayMenuForConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the interaction is about to end.
   *
   * @param interaction    The UIContextMenuInteraction.
   * @param configuration  Ending configuration.
   * @param animator       Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willEndFor configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)

  /**
   * @abstract Called when the interaction is about to end.
   *
   * @param interaction    The UIContextMenuInteraction.
   * @param configuration  Ending configuration.
   * @param animator       Disappearance animator. Add animations to run them alongside the disappearance transition.
   */
  @available(swift, obsoleted: 3, renamed: "contextMenuInteraction(_:willEndFor:animator:)")
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willEndForConfiguration configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
}
