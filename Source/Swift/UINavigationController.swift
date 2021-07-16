@_exported import Foundation


/**
 UINavigationController manages a stack of view controllers and a navigation bar.
 It performs horizontal view transitions for pushed and popped views while keeping the navigation bar in sync.
 
 Most clients will not need to subclass UINavigationController.
 
 If a navigation controller is nested in a tab bar controller, it uses the title and toolbar attributes of the bottom view controller on the stack.
 
 UINavigationController is rotatable if its top view controller is rotatable.
 Navigation between controllers with non-uniform rotatability is currently not supported.
*/
@available(swift, obsoleted: 4.2, renamed: "UINavigationController.Operation")
typealias UINavigationControllerOperation = UINavigationController.Operation
extension UINavigationController {

  /**
   UINavigationController manages a stack of view controllers and a navigation bar.
   It performs horizontal view transitions for pushed and popped views while keeping the navigation bar in sync.
   
   Most clients will not need to subclass UINavigationController.
   
   If a navigation controller is nested in a tab bar controller, it uses the title and toolbar attributes of the bottom view controller on the stack.
   
   UINavigationController is rotatable if its top view controller is rotatable.
   Navigation between controllers with non-uniform rotatability is currently not supported.
  */
  enum Operation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UINavigationController.Operation { get }
    case push
    @available(swift, obsoleted: 3, renamed: "push")
    static var Push: UINavigationController.Operation { get }
    case pop
    @available(swift, obsoleted: 3, renamed: "pop")
    static var Pop: UINavigationController.Operation { get }
  }
  class let hideShowBarDuration: CGFloat
}
@available(swift, obsoleted: 4.2, renamed: "UINavigationController.hideShowBarDuration")
let UINavigationControllerHideShowBarDuration: CGFloat
@available(iOS 2.0, *)
class UINavigationController : UIViewController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: NSCoder)
  func pushViewController(_ viewController: UIViewController, animated: Bool)
  func popViewController(animated: Bool) -> UIViewController?
  @available(swift, obsoleted: 3, renamed: "popViewController(animated:)")
  func popViewControllerAnimated(_ animated: Bool) -> UIViewController?
  func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewController(animated: Bool) -> [UIViewController]?
  @available(swift, obsoleted: 3, renamed: "popToRootViewController(animated:)")
  func popToRootViewControllerAnimated(_ animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  @available(iOS 3.0, *)
  func setViewControllers(_ viewControllers: [UIViewController], animated: Bool)
  var isNavigationBarHidden: Bool
  @available(swift, obsoleted: 3, renamed: "isNavigationBarHidden")
  var navigationBarHidden: Bool
  func setNavigationBarHidden(_ hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  @available(iOS 3.0, *)
  var isToolbarHidden: Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isToolbarHidden")
  var toolbarHidden: Bool
  @available(iOS 3.0, *)
  func setToolbarHidden(_ hidden: Bool, animated: Bool)
  @available(iOS 3.0, *)
  var toolbar: UIToolbar! { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  @available(iOS 7.0, *)
  var interactivePopGestureRecognizer: UIGestureRecognizer? { get }
  @available(iOS 8.0, *)
  func show(_ vc: UIViewController, sender: Any?)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "show(_:sender:)")
  func showViewController(_ vc: UIViewController, sender: Any?)

  /// When the keyboard appears, the navigation controller's navigationBar toolbar will be hidden. The bars will remain hidden when the keyboard dismisses, but a tap in the content area will show them.
  @available(iOS 8.0, *)
  var hidesBarsWhenKeyboardAppears: Bool

  /// When the user swipes, the navigation controller's navigationBar & toolbar will be hidden (on a swipe up) or shown (on a swipe down). The toolbar only participates if it has items.
  @available(iOS 8.0, *)
  var hidesBarsOnSwipe: Bool

  /// The gesture recognizer that triggers if the bars will hide or show due to a swipe. Do not change the delegate or attempt to replace this gesture by overriding this method.
  @available(iOS 8.0, *)
  var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer { get }

  /// When the UINavigationController's vertical size class is compact, hide the UINavigationBar and UIToolbar. Unhandled taps in the regions that would normally be occupied by these bars will reveal the bars.
  @available(iOS 8.0, *)
  var hidesBarsWhenVerticallyCompact: Bool

  /// When the user taps, the navigation controller's navigationBar & toolbar will be hidden or shown, depending on the hidden state of the navigationBar. The toolbar will only be shown if it has items to display.
  @available(iOS 8.0, *)
  var hidesBarsOnTap: Bool

  /// The gesture recognizer used to recognize if the bars will hide or show due to a tap in content. Do not change the delegate or attempt to replace this gesture by overriding this method.
  @available(iOS 8.0, *)
  unowned(unsafe) var barHideOnTapGestureRecognizer: @sil_unmanaged UITapGestureRecognizer { get }
  convenience init()
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "navigationController(_:willShow:animated:)")
  optional func navigationController(_ navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool)
  @available(iOS 2.0, *)
  optional func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "navigationController(_:didShow:animated:)")
  optional func navigationController(_ navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool)
  @available(iOS 7.0, *)
  optional func navigationControllerSupportedInterfaceOrientations(_ navigationController: UINavigationController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func navigationControllerPreferredInterfaceOrientationForPresentation(_ navigationController: UINavigationController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func navigationController(_ navigationController: UINavigationController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "navigationController(_:interactionControllerFor:)")
  optional func navigationController(_ navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "navigationController(_:animationControllerFor:from:to:)")
  optional func navigationController(_ navigationController: UINavigationController, animationControllerForOperation operation: UINavigationController.Operation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var hidesBottomBarWhenPushed: Bool
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
  @available(iOS 3.0, *)
  var toolbarItems: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  func setToolbarItems(_ toolbarItems: [UIBarButtonItem]?, animated: Bool)
}
