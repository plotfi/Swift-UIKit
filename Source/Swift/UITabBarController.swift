@_exported import Foundation


/**
 UITabBarController manages a button bar and transition view, for an application with multiple top-level modes.
 
 To use in your application, add its view to the view hierarchy, then add top-level view controllers in order.
 Most clients will not need to subclass UITabBarController.

 If more than five view controllers are added to a tab bar controller, only the first four will display.
 The rest will be accessible under an automatically generated More item.
 
 UITabBarController is rotatable if all of its view controllers are rotatable.
 */
@available(iOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  var moreNavigationController: UINavigationController { get }
  var customizableViewControllers: [UIViewController]?
  @available(iOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed: Bool)
  @available(iOS 2.0, *)
  func tabBar(_ tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed: Bool)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "tabBarController(_:shouldSelect:)")
  optional func tabBarController(_ tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool
  @available(iOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController)
  @available(swift, obsoleted: 3, renamed: "tabBarController(_:didSelect:)")
  optional func tabBarController(_ tabBarController: UITabBarController, didSelectViewController viewController: UIViewController)
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willBeginCustomizing viewControllers: [UIViewController])
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "tabBarController(_:willBeginCustomizing:)")
  optional func tabBarController(_ tabBarController: UITabBarController, willBeginCustomizingViewControllers viewControllers: [UIViewController])
  @available(iOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willEndCustomizing viewControllers: [UIViewController], changed: Bool)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "tabBarController(_:willEndCustomizing:changed:)")
  optional func tabBarController(_ tabBarController: UITabBarController, willEndCustomizingViewControllers viewControllers: [UIViewController], changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didEndCustomizing viewControllers: [UIViewController], changed: Bool)
  @available(swift, obsoleted: 3, renamed: "tabBarController(_:didEndCustomizing:changed:)")
  optional func tabBarController(_ tabBarController: UITabBarController, didEndCustomizingViewControllers viewControllers: [UIViewController], changed: Bool)
  @available(iOS 7.0, *)
  optional func tabBarControllerSupportedInterfaceOrientations(_ tabBarController: UITabBarController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func tabBarControllerPreferredInterfaceOrientationForPresentation(_ tabBarController: UITabBarController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "tabBarController(_:interactionControllerFor:)")
  optional func tabBarController(_ tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "tabBarController(_:animationControllerForTransitionFrom:to:)")
  optional func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
  @available(iOS, unavailable)
  var tabBarObservedScrollView: UIScrollView?
}
