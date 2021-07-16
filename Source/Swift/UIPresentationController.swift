@_exported import Foundation

protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle
  @available(swift, obsoleted: 3, renamed: "adaptivePresentationStyle(for:)")
  optional func adaptivePresentationStyleForPresentationController(_ controller: UIPresentationController) -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  optional func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  @available(swift, obsoleted: 3, renamed: "adaptivePresentationStyle(for:traitCollection:)")
  optional func adaptivePresentationStyleForPresentationController(_ controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(iOS 8.0, *)
  optional func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  @available(iOS 8.3, *)
  optional func presentationController(_ presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?)
  @available(iOS 13.0, *)
  optional func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool
  @available(iOS 13.0, *)
  optional func presentationControllerWillDismiss(_ presentationController: UIPresentationController)
  @available(iOS 13.0, *)
  optional func presentationControllerDidDismiss(_ presentationController: UIPresentationController)
  @available(iOS 13.0, *)
  optional func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController)
}
@available(iOS 8.0, *)
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?)
  @available(swift, obsoleted: 3, renamed: "init(presentedViewController:presenting:)")
  init(presentedViewController: UIViewController, presentingViewController: UIViewController?)
  @available(*, unavailable)
  convenience init()
  var adaptivePresentationStyle: UIModalPresentationStyle { get }
  @available(iOS 8.3, *)
  func adaptivePresentationStyle(for traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  @available(swift, obsoleted: 3, renamed: "adaptivePresentationStyle(for:)")
  func adaptivePresentationStyleForTraitCollection(_ traitCollection: UITraitCollection) -> UIModalPresentationStyle
  func containerViewWillLayoutSubviews()
  func containerViewDidLayoutSubviews()
  var presentedView: UIView? { get }
  var frameOfPresentedViewInContainerView: CGRect { get }
  var shouldPresentInFullscreen: Bool { get }
  var shouldRemovePresentersView: Bool { get }
  func presentationTransitionWillBegin()
  func presentationTransitionDidEnd(_ completed: Bool)
  func dismissalTransitionWillBegin()
  func dismissalTransitionDidEnd(_ completed: Bool)
  @NSCopying var overrideTraitCollection: UITraitCollection?
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }

  /// The preferred focus environments define where to search for the default focused item in an environment, such as when focus updates programmatically.
  /// Starting from the target environment, each preferred focus environment is recursively searched in the order of the array until an eligible, focusable item is found.
  /// Preferred focus environments can include focusable and non-focusable items, in addition to non-item environments. Returning an empty array is equivalent to returning an array containing only 'self'.
  @available(iOS 9.0, *)
  var preferredFocusEnvironments: [UIFocusEnvironment] { get }

  /// The parent focus environment of this environment, or nil if no parent exists.
  /// NOTE: If you implement this method, you must return a non-nil value for parent focus environment, otherwise your focus environment will not participate in focus interactions.
  @available(iOS 12.0, *)
  weak var parentFocusEnvironment: @sil_weak UIFocusEnvironment? { get }

  /// The container of any child focus items in this focus environment, or nil if no container exists.
  @available(iOS 12.0, *)
  var focusItemContainer: UIFocusItemContainer? { get }
  @available(iOS, introduced: 9.0, deprecated: 10.0)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// The identifier of the focus group that this view belongs to. If this is nil, subviews inherit their superview's focus group.
  @available(iOS 14.0, *)
  var focusGroupIdentifier: String? { get }

  /** To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator)

  /// Marks this environment as needing a focus update, which if accepted will attempt to reset focus to this environment, or one of its preferred focus environments, on the next update cycle. If this environment does not currently contain the focused item, then calling this method has no effect. If a parent of this environment is also requesting focus, then this environment's request is rejected in favor of the parent's.
  /// NOTE: If you provide your own implementation, it must call `[[UIFocusSystem focusSystemForEnvironment:self] requestFocusUpdateToEnvironment:self]`;
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment or one of its preferred focus environments.
  /// NOTE: If you provide your own implementation, it must call `[[UIFocusSystem focusSystemForEnvironment:self] updateFocusIfNeeded];`.
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(iOS 9.0, *)
  func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focused item has been updated to a new item. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(iOS 9.0, *)
  func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)

  /// Specifies an identifier corresponding to a sound that should be played for a focus update.
  /// Return UIFocusSoundIdentifierNone to opt out of sounds, UIFocusSoundIdentifierDefault for the system
  /// default sounds, a previously registered identifier for a custom sound, or nil to defer the decision
  /// to the parent.
  @available(iOS, unavailable)
  func soundIdentifierForFocusUpdate(in context: UIFocusUpdateContext) -> UIFocusSoundIdentifier?
}
