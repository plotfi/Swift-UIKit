@_exported import Foundation

struct UITransitionContextViewControllerKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
struct UITransitionContextViewKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
protocol UIViewControllerTransitionCoordinatorContext : NSObjectProtocol {
  var isAnimated: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isAnimated")
  var animated: Bool { get }
  var presentationStyle: UIModalPresentationStyle { get }

  /// initiallyInteractive indicates whether the transition was initiated as an interactive transition.
  /// It never changes during the course of a transition.
  /// It can only be YES if isAnimated is YES.
  ///If it is NO, then isInteractive can only be YES if isInterruptible is YES
  var initiallyInteractive: Bool { get }
  @available(iOS 10.0, *)
  var isInterruptible: Bool { get }
  var isInteractive: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isInteractive")
  var interactive: Bool { get }
  var isCancelled: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isCancelled")
  var cancelled: Bool { get }
  var transitionDuration: TimeInterval { get }
  var percentComplete: CGFloat { get }
  var completionVelocity: CGFloat { get }
  @available(iOS 2.0, *)
  var completionCurve: UIView.AnimationCurve { get }
  @available(iOS 2.0, *)
  func viewController(forKey key: UITransitionContextViewControllerKey) -> UIViewController?
  @available(swift, obsoleted: 3, renamed: "viewController(forKey:)")
  func viewControllerForKey(_ key: UITransitionContextViewControllerKey) -> UIViewController?
  @available(iOS 8.0, *)
  func view(forKey key: UITransitionContextViewKey) -> UIView?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "view(forKey:)")
  func viewForKey(_ key: UITransitionContextViewKey) -> UIView?
  @available(iOS 2.0, *)
  var containerView: UIView { get }
  @available(iOS 8.0, *)
  var targetTransform: CGAffineTransform { get }
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animate(alongsideTransition animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "animate(alongsideTransition:completion:)")
  func animateAlongsideTransition(_ animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(iOS 2.0, *)
  func animateAlongsideTransition(in view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "animateAlongsideTransition(in:animation:completion:)")
  func animateAlongsideTransitionInView(_ view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  func notifyWhenInteractionEnds(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
  @available(swift, obsoleted: 3, renamed: "notifyWhenInteractionEnds(_:)")
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  func notifyWhenInteractionEndsUsingBlock(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
  @available(iOS 10.0, *)
  func notifyWhenInteractionChanges(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "notifyWhenInteractionChanges(_:)")
  func notifyWhenInteractionChangesUsingBlock(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(iOS 7.0, *)
  var transitionCoordinator: UIViewControllerTransitionCoordinator? { get }
}
