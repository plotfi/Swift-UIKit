@_exported import Foundation

enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case coverVertical
  @available(swift, obsoleted: 3, renamed: "coverVertical")
  static var CoverVertical: UIModalTransitionStyle { get }
  case flipHorizontal
  @available(swift, obsoleted: 3, renamed: "flipHorizontal")
  static var FlipHorizontal: UIModalTransitionStyle { get }
  case crossDissolve
  @available(swift, obsoleted: 3, renamed: "crossDissolve")
  static var CrossDissolve: UIModalTransitionStyle { get }
  @available(iOS 3.2, *)
  case partialCurl
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "partialCurl")
  static var PartialCurl: UIModalTransitionStyle { get }
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case fullScreen
  @available(swift, obsoleted: 3, renamed: "fullScreen")
  static var FullScreen: UIModalPresentationStyle { get }
  @available(iOS 3.2, *)
  case pageSheet
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "pageSheet")
  static var PageSheet: UIModalPresentationStyle { get }
  @available(iOS 3.2, *)
  case formSheet
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "formSheet")
  static var FormSheet: UIModalPresentationStyle { get }
  @available(iOS 3.2, *)
  case currentContext
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "currentContext")
  static var CurrentContext: UIModalPresentationStyle { get }
  @available(iOS 7.0, *)
  case custom
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "custom")
  static var Custom: UIModalPresentationStyle { get }
  @available(iOS 8.0, *)
  case overFullScreen
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "overFullScreen")
  static var OverFullScreen: UIModalPresentationStyle { get }
  @available(iOS 8.0, *)
  case overCurrentContext
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "overCurrentContext")
  static var OverCurrentContext: UIModalPresentationStyle { get }
  @available(iOS 8.0, *)
  case popover
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "popover")
  static var Popover: UIModalPresentationStyle { get }
  @available(iOS, unavailable)
  case blurOverFullScreen
  @available(iOS 7.0, *)
  case none
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIModalPresentationStyle { get }
  @available(iOS 13.0, *)
  case automatic
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: UIModalPresentationStyle { get }
}
protocol UIContentContainer : NSObjectProtocol {
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(iOS 8.0, *)
  func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "preferredContentSizeDidChange(forChildContentContainer:)")
  func preferredContentSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "systemLayoutFittingSizeDidChange(forChildContentContainer:)")
  func systemLayoutFittingSizeDidChangeForChildContentContainer(_ container: UIContentContainer)
  @available(iOS 8.0, *)
  func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "size(forChildContentContainer:withParentContainerSize:)")
  func sizeForChildContentContainer(_ container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "viewWillTransition(to:with:)")
  func viewWillTransitionToSize(_ size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "willTransition(to:with:)")
  func willTransitionToTraitCollection(_ newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
}
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIViewController.showDetailTargetDidChangeNotification")
let UIViewControllerShowDetailTargetDidChangeNotification: NSNotification.Name
extension UIViewController {
  @available(iOS 8.0, *)
  class let showDetailTargetDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  class let hierarchyInconsistencyException: NSExceptionName
}
@available(iOS 2.0, *)
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  var view: UIView!
  func loadView()
  @available(iOS 9.0, *)
  func loadViewIfNeeded()
  @available(iOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  @available(iOS, unavailable, introduced: 5.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func viewWillUnload()
  @available(iOS, unavailable, introduced: 3.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func viewDidUnload()
  func viewDidLoad()
  @available(iOS 3.0, *)
  var isViewLoaded: Bool { get }
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isViewLoaded")
  var viewLoaded: Bool { get }
  var nibName: String? { get }
  var nibBundle: Bundle? { get }
  @available(iOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(iOS 5.0, *)
  func performSegue(withIdentifier identifier: String, sender: Any?)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "performSegue(withIdentifier:sender:)")
  func performSegueWithIdentifier(_ identifier: String, sender: Any?)
  @available(iOS 6.0, *)
  func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "shouldPerformSegue(withIdentifier:sender:)")
  func shouldPerformSegueWithIdentifier(_ identifier: String, sender: Any?) -> Bool
  @available(iOS 5.0, *)
  func prepare(for segue: UIStoryboardSegue, sender: Any?)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "prepare(for:sender:)")
  func prepareForSegue(_ segue: UIStoryboardSegue, sender: Any?)
  @available(iOS 13.0, *)
  func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, sender: Any?) -> Bool
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "canPerformUnwindSegueAction(_:from:sender:)")
  func canPerformUnwindSegueAction(_ action: Selector, fromViewController: UIViewController, sender: Any?) -> Bool
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any) -> Bool
  @available(swift, obsoleted: 3, renamed: "canPerformUnwindSegueAction(_:from:withSender:)")
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  func canPerformUnwindSegueAction(_ action: Selector, fromViewController: UIViewController, withSender sender: Any) -> Bool
  @available(iOS 9.0, *)
  func allowedChildrenForUnwinding(from source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 4.2, renamed: "allowedChildrenForUnwinding(from:)")
  func allowedChildViewControllersForUnwinding(from source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "allowedChildrenForUnwinding(from:)")
  func allowedChildViewControllersForUnwindingFromSource(_ source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(iOS 9.0, *)
  func childContaining(_ source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 4.2, renamed: "childContaining(_:)")
  func childViewControllerContaining(_ source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "childContaining(_:)")
  func childViewControllerContainingSegueSource(_ source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(iOS, introduced: 6.0, deprecated: 9.0)
  func forUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any?) -> UIViewController?
  @available(swift, obsoleted: 3, renamed: "forUnwindSegueAction(_:from:withSender:)")
  @available(iOS, introduced: 6.0, deprecated: 9.0)
  func viewControllerForUnwindSegueAction(_ action: Selector, fromViewController: UIViewController, withSender sender: Any?) -> UIViewController?
  @available(iOS 9.0, *)
  func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 4.2, renamed: "unwind(for:towards:)")
  func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "unwind(for:towards:)")
  func unwindForSegue(_ unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(iOS, introduced: 6.0, deprecated: 9.0)
  func segueForUnwinding(to toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  @available(swift, obsoleted: 3, renamed: "segueForUnwinding(to:from:identifier:)")
  @available(iOS, introduced: 6.0, deprecated: 9.0)
  func segueForUnwindingToViewController(_ toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(_ animated: Bool)
  func viewDidAppear(_ animated: Bool)
  func viewWillDisappear(_ animated: Bool)
  func viewDidDisappear(_ animated: Bool)
  @available(iOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(iOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parent: @sil_weak UIViewController? { get }
  @available(swift, obsoleted: 3, renamed: "parent")
  weak var parentViewController: @sil_weak UIViewController? { get }
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var modal: UIViewController? { get }
  @available(swift, obsoleted: 3, renamed: "modal")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var modalViewController: UIViewController? { get }
  @available(iOS 5.0, *)
  var presentedViewController: UIViewController? { get }
  @available(iOS 5.0, *)
  var presentingViewController: UIViewController? { get }
  @available(iOS 5.0, *)
  var definesPresentationContext: Bool
  @available(iOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(iOS 10.0, *)
  var restoresFocusAfterTransition: Bool
  @available(iOS 5.0, *)
  var isBeingPresented: Bool { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "isBeingPresented")
  var beingPresented: Bool { get }
  @available(iOS 5.0, *)
  var isBeingDismissed: Bool { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "isBeingDismissed")
  var beingDismissed: Bool { get }
  @available(iOS 5.0, *)
  var isMovingToParent: Bool { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "isMovingToParent")
  var isMovingToParentViewController: Bool { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "isMovingToParent")
  var movingToParentViewController: Bool { get }
  @available(iOS 5.0, *)
  var isMovingFromParent: Bool { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "isMovingFromParent")
  var isMovingFromParentViewController: Bool { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "isMovingFromParent")
  var movingFromParentViewController: Bool { get }
  @available(iOS 5.0, *)
  func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  func present(_ viewControllerToPresent: UIViewController, animated flag: Bool) async
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "present(_:animated:completion:)")
  func presentViewController(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  func dismiss(animated flag: Bool) async
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "dismiss(animated:completion:)")
  func dismissViewControllerAnimated(_ flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func presentModalViewController(_ modalViewController: UIViewController, animated: Bool)
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func dismissModalViewController(animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismissModalViewController(animated:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func dismissModalViewControllerAnimated(_ animated: Bool)
  @available(iOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(iOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(iOS 7.0, *)
  var modalPresentationCapturesStatusBarAppearance: Bool
  @available(iOS 4.3, *)
  var disablesAutomaticKeyboardDismissal: Bool { get }
  @available(iOS, unavailable, introduced: 3.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var wantsFullScreenLayout: Bool
  @available(iOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(iOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(iOS 7.0, *)
  var preferredContentSize: CGSize
  @available(iOS 7.0, *)
  var preferredStatusBarStyle: UIStatusBarStyle { get }
  @available(iOS 7.0, *)
  var prefersStatusBarHidden: Bool { get }
  @available(iOS 7.0, *)
  var preferredStatusBarUpdateAnimation: UIStatusBarAnimation { get }
  @available(iOS 7.0, *)
  func setNeedsStatusBarAppearanceUpdate()
  @available(iOS 8.0, *)
  func targetViewController(forAction action: Selector, sender: Any?) -> UIViewController?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "targetViewController(forAction:sender:)")
  func targetViewControllerForAction(_ action: Selector, sender: Any?) -> UIViewController?
  @available(iOS 8.0, *)
  func show(_ vc: UIViewController, sender: Any?)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "show(_:sender:)")
  func showViewController(_ vc: UIViewController, sender: Any?)
  @available(iOS 8.0, *)
  func showDetailViewController(_ vc: UIViewController, sender: Any?)
  @available(iOS, unavailable)
  var preferredUserInterfaceStyle: UIUserInterfaceStyle { get }
  @available(iOS, unavailable)
  func setNeedsUserInterfaceAppearanceUpdate()
  @available(iOS 13.0, *)
  var overrideUserInterfaceStyle: UIUserInterfaceStyle
  convenience init()
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

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
  @available(iOS 2.0, *)
  func encode(with coder: NSCoder)

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
extension UIViewController {
  @available(iOS 5.0, *)
  class func attemptRotationToDeviceOrientation()
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func shouldAutorotate(to toInterfaceOrientation: UIInterfaceOrientation) -> Bool
  @available(swift, obsoleted: 3, renamed: "shouldAutorotate(to:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func shouldAutorotateToInterfaceOrientation(_ toInterfaceOrientation: UIInterfaceOrientation) -> Bool
  @available(iOS 6.0, *)
  var shouldAutorotate: Bool { get }
  @available(iOS 6.0, *)
  var supportedInterfaceOrientations: UIInterfaceOrientationMask { get }
  @available(iOS 6.0, *)
  var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation { get }
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Header views are animated along with the rest of the view hierarchy")
  func rotatingHeaderView() -> UIView?
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Footer views are animated along with the rest of the view hierarchy")
  func rotatingFooterView() -> UIView?
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  var interfaceOrientation: UIInterfaceOrientation { get }
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(swift, obsoleted: 3, renamed: "willRotate(to:duration:)")
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willRotateToInterfaceOrientation(_ toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation)
  @available(swift, obsoleted: 3, renamed: "didRotate(from:)")
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  func didRotateFromInterfaceOrientation(_ fromInterfaceOrientation: UIInterfaceOrientation)
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willAnimateRotation(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(swift, obsoleted: 3, renamed: "willAnimateRotation(to:duration:)")
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willAnimateRotationToInterfaceOrientation(_ toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func willAnimateFirstHalfOfRotation(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(swift, obsoleted: 3, renamed: "willAnimateFirstHalfOfRotation(to:duration:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func willAnimateFirstHalfOfRotationToInterfaceOrientation(_ toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func didAnimateFirstHalfOfRotation(to toInterfaceOrientation: UIInterfaceOrientation)
  @available(swift, obsoleted: 3, renamed: "didAnimateFirstHalfOfRotation(to:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func didAnimateFirstHalfOfRotationToInterfaceOrientation(_ toInterfaceOrientation: UIInterfaceOrientation)
  @available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func willAnimateSecondHalfOfRotation(from fromInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(swift, obsoleted: 3, renamed: "willAnimateSecondHalfOfRotation(from:duration:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func willAnimateSecondHalfOfRotationFromInterfaceOrientation(_ fromInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
}
extension UIViewController {
  var isEditing: Bool
  @available(swift, obsoleted: 3, renamed: "isEditing")
  var editing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  var editButtonItem: UIBarButtonItem { get }
}
extension UIViewController {
  @available(iOS, introduced: 3.0, deprecated: 8.0)
  var searchDisplayController: UISearchDisplayController? { get }
}
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIViewController.hierarchyInconsistencyException")
let UIViewControllerHierarchyInconsistencyException: NSExceptionName
extension UIViewController {
  @available(iOS 5.0, *)
  var children: [UIViewController] { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "children")
  var childViewControllers: [UIViewController] { get }
  @available(iOS 5.0, *)
  func addChild(_ childController: UIViewController)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "addChild(_:)")
  func addChildViewController(_ childController: UIViewController)
  @available(iOS 5.0, *)
  func removeFromParent()
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "removeFromParent()")
  func removeFromParentViewController()
  @available(iOS 5.0, *)
  func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 5.0, *)
  func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?) async -> Bool
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "transition(from:to:duration:options:animations:completion:)")
  func transitionFromViewController(_ fromViewController: UIViewController, toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 5.0, *)
  func beginAppearanceTransition(_ isAppearing: Bool, animated: Bool)
  @available(iOS 5.0, *)
  func endAppearanceTransition()
  @available(iOS 7.0, *)
  var childForStatusBarStyle: UIViewController? { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4.2, renamed: "childForStatusBarStyle")
  var childViewControllerForStatusBarStyle: UIViewController? { get }
  @available(iOS 7.0, *)
  var childForStatusBarHidden: UIViewController? { get }
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4.2, renamed: "childForStatusBarHidden")
  var childViewControllerForStatusBarHidden: UIViewController? { get }
  @available(iOS 8.0, *)
  func setOverrideTraitCollection(_ collection: UITraitCollection?, forChild childViewController: UIViewController)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 4.2, renamed: "setOverrideTraitCollection(_:forChild:)")
  func setOverrideTraitCollection(_ collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  @available(iOS 8.0, *)
  func overrideTraitCollection(forChild childViewController: UIViewController) -> UITraitCollection?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 4.2, renamed: "overrideTraitCollection(forChild:)")
  func overrideTraitCollection(forChildViewController childViewController: UIViewController) -> UITraitCollection?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "overrideTraitCollection(forChild:)")
  func overrideTraitCollectionForChildViewController(_ childViewController: UIViewController) -> UITraitCollection?
  @available(iOS, unavailable)
  var childViewControllerForUserInterfaceStyle: UIViewController? { get }
}
extension UIViewController {
  @available(iOS, unavailable, introduced: 5.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers() -> Bool
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "Manually forward viewWillTransitionToSize:withTransitionCoordinator: if necessary")
  func shouldAutomaticallyForwardRotationMethods() -> Bool
  @available(iOS 6.0, *)
  var shouldAutomaticallyForwardAppearanceMethods: Bool { get }
  @available(iOS 5.0, *)
  func willMove(toParent parent: UIViewController?)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "willMove(toParent:)")
  func willMove(toParentViewController parent: UIViewController?)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "willMove(toParent:)")
  func willMoveToParentViewController(_ parent: UIViewController?)
  @available(iOS 5.0, *)
  func didMove(toParent parent: UIViewController?)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 4.2, renamed: "didMove(toParent:)")
  func didMove(toParentViewController parent: UIViewController?)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "didMove(toParent:)")
  func didMoveToParentViewController(_ parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  var restorationClass: UIViewControllerRestoration.Type?
  @available(iOS 6.0, *)
  func encodeRestorableState(with coder: NSCoder)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "encodeRestorableState(with:)")
  func encodeRestorableStateWithCoder(_ coder: NSCoder)
  @available(iOS 6.0, *)
  func decodeRestorableState(with coder: NSCoder)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "decodeRestorableState(with:)")
  func decodeRestorableStateWithCoder(_ coder: NSCoder)
  @available(iOS 7.0, *)
  func applicationFinishedRestoringState()
  var restorationParent: UIStateRestoring? { get }
  var objectRestorationClass: UIObjectRestoration.Type? { get }
}
extension UIViewController {
  @available(iOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(iOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
  var topLayoutGuide: UILayoutSupport { get }
  @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.bottomAnchor instead of bottomLayoutGuide.topAnchor")
  var bottomLayoutGuide: UILayoutSupport { get }
  @available(iOS 11.0, *)
  var additionalSafeAreaInsets: UIEdgeInsets
  @available(iOS 11.0, *)
  var systemMinimumLayoutMargins: NSDirectionalEdgeInsets { get }
  @available(iOS 11.0, *)
  var viewRespectsSystemMinimumLayoutMargins: Bool
  @available(iOS 11.0, *)
  func viewLayoutMarginsDidChange()
  @available(iOS 11.0, *)
  func viewSafeAreaInsetsDidChange()
}
extension UIViewController {
  @available(iOS 9.0, *)
  func addKeyCommand(_ keyCommand: UIKeyCommand)
  @available(iOS 9.0, *)
  func removeKeyCommand(_ keyCommand: UIKeyCommand)
}
extension UIViewController {

  /// Determines whether the receiver continues to respond to actions while it is presenting a view controller modally.
  ///
  /// Defaults to YES. You can change the default return value by providing a value for UIViewControllerPerformsActionsWhilePresentingModally in your Info.plist file.
  @available(iOS 13.0, *)
  var performsActionsWhilePresentingModally: Bool { get }
}
extension UIViewController : NSExtensionRequestHandling {
  @available(iOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
  @available(iOS 8.0, *)
  func beginRequest(with context: NSExtensionContext)
}
extension UIViewController {
  @available(iOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(iOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
  @available(iOS 13.0, *)
  var isModalInPresentation: Bool
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "isModalInPresentation")
  var modalInPresentation: Bool
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var sourceView: UIView { get }
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var sourceRect: CGRect { get set }
}
@available(iOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
  @available(swift, obsoleted: 3, renamed: "previewingContext(_:commit:)")
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func registerForPreviewing(with delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(swift, obsoleted: 3, renamed: "registerForPreviewing(with:sourceView:)")
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func registerForPreviewingWithDelegate(_ delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func unregisterForPreviewing(withContext previewing: UIViewControllerPreviewing)
  @available(swift, obsoleted: 3, renamed: "unregisterForPreviewing(withContext:)")
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func unregisterForPreviewingWithContext(_ previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  @available(iOS 11.0, *)
  var childForScreenEdgesDeferringSystemGestures: UIViewController? { get }
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "childForScreenEdgesDeferringSystemGestures")
  var childViewControllerForScreenEdgesDeferringSystemGestures: UIViewController? { get }
  @available(iOS 11.0, *)
  var preferredScreenEdgesDeferringSystemGestures: UIRectEdge { get }
  @available(iOS 11.0, *)
  func setNeedsUpdateOfScreenEdgesDeferringSystemGestures()
}
extension UIViewController {
  @available(iOS 11.0, *)
  var childForHomeIndicatorAutoHidden: UIViewController? { get }
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "childForHomeIndicatorAutoHidden")
  var childViewControllerForHomeIndicatorAutoHidden: UIViewController? { get }
  @available(iOS 11.0, *)
  var prefersHomeIndicatorAutoHidden: Bool { get }
  @available(iOS 11.0, *)
  func setNeedsUpdateOfHomeIndicatorAutoHidden()
}
extension UIViewController {
  @available(iOS 14.0, *)
  var childViewControllerForPointerLock: UIViewController? { get }
  @available(iOS 14.0, *)
  var prefersPointerLocked: Bool { get }
  @available(iOS 14.0, *)
  func setNeedsUpdateOfPrefersPointerLocked()
}
extension UIViewController {
  @available(iOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
  var previewActionItems: [UIPreviewActionItem] { get }
}
@available(iOS 9.0, *)
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIPreviewAction.Style")
typealias UIPreviewActionStyle = UIPreviewAction.Style
extension UIPreviewAction {
  @available(iOS 9.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UIPreviewAction.Style { get }
    case selected
    @available(swift, obsoleted: 3, renamed: "selected")
    static var Selected: UIPreviewAction.Style { get }
    case destructive
    @available(swift, obsoleted: 3, renamed: "destructive")
    static var Destructive: UIPreviewAction.Style { get }
  }
}
@available(iOS 9.0, *)
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewAction.Style, handler: @escaping (UIPreviewAction, UIViewController) -> Void)
  @available(*, unavailable, renamed: "init(title:style:handler:)", message: "Not available in Swift")
  class func actionWithTitle(_ title: String, style: UIPreviewAction.Style, handler: @escaping (UIPreviewAction, UIViewController) -> Void) -> Self
  init()
  @available(iOS 9.0, *)
  var title: String { get }
  @available(iOS 9.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 9.0, *)
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewAction.Style, actions: [UIPreviewAction])
  @available(*, unavailable, renamed: "init(title:style:actions:)", message: "Not available in Swift")
  class func actionGroupWithTitle(_ title: String, style: UIPreviewAction.Style, actions: [UIPreviewAction]) -> Self
  init()
  @available(iOS 9.0, *)
  var title: String { get }
  @available(iOS 9.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
