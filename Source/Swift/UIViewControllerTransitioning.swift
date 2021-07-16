@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UITransitionContextViewControllerKey.from")
let UITransitionContextFromViewControllerKey: UITransitionContextViewControllerKey
extension UITransitionContextViewControllerKey {
  @available(iOS 7.0, *)
  static let from: UITransitionContextViewControllerKey
  @available(iOS 7.0, *)
  static let to: UITransitionContextViewControllerKey
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UITransitionContextViewControllerKey.to")
let UITransitionContextToViewControllerKey: UITransitionContextViewControllerKey
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UITransitionContextViewKey.from")
let UITransitionContextFromViewKey: UITransitionContextViewKey
extension UITransitionContextViewKey {
  @available(iOS 8.0, *)
  static let from: UITransitionContextViewKey
  @available(iOS 8.0, *)
  static let to: UITransitionContextViewKey
}
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UITransitionContextViewKey.to")
let UITransitionContextToViewKey: UITransitionContextViewKey
protocol UIViewControllerContextTransitioning : NSObjectProtocol {
  @available(iOS 2.0, *)
  var containerView: UIView { get }
  var isAnimated: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isAnimated")
  var animated: Bool { get }
  var isInteractive: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isInteractive")
  var interactive: Bool { get }
  var transitionWasCancelled: Bool { get }
  var presentationStyle: UIModalPresentationStyle { get }
  func updateInteractiveTransition(_ percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  @available(iOS 10.0, *)
  func pauseInteractiveTransition()
  func completeTransition(_ didComplete: Bool)
  @available(iOS 2.0, *)
  func viewController(forKey key: UITransitionContextViewControllerKey) -> UIViewController?
  @available(swift, obsoleted: 3, renamed: "viewController(forKey:)")
  func viewControllerForKey(_ key: UITransitionContextViewControllerKey) -> UIViewController?
  @available(iOS 8.0, *)
  func view(forKey key: UITransitionContextViewKey) -> UIView?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "view(forKey:)")
  func viewForKey(_ key: UITransitionContextViewKey) -> UIView?
  @available(iOS 8.0, *)
  var targetTransform: CGAffineTransform { get }
  @available(iOS 2.0, *)
  func initialFrame(for vc: UIViewController) -> CGRect
  @available(swift, obsoleted: 3, renamed: "initialFrame(for:)")
  func initialFrameForViewController(_ vc: UIViewController) -> CGRect
  @available(iOS 2.0, *)
  func finalFrame(for vc: UIViewController) -> CGRect
  @available(swift, obsoleted: 3, renamed: "finalFrame(for:)")
  func finalFrameForViewController(_ vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : NSObjectProtocol {
  func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  @available(swift, obsoleted: 3, renamed: "transitionDuration(using:)")
  func transitionDuration(_ transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  func animateTransition(using transitionContext: UIViewControllerContextTransitioning)
  @available(swift, obsoleted: 3, renamed: "animateTransition(using:)")
  func animateTransition(_ transitionContext: UIViewControllerContextTransitioning)

  /// A conforming object implements this method if the transition it creates can
  /// be interrupted. For example, it could return an instance of a
  /// UIViewPropertyAnimator. It is expected that this method will return the same
  /// instance for the life of a transition.
  @available(iOS 10.0, *)
  optional func interruptibleAnimator(using transitionContext: UIViewControllerContextTransitioning) -> UIViewImplicitlyAnimating

  /// A conforming object implements this method if the transition it creates can
  /// be interrupted. For example, it could return an instance of a
  /// UIViewPropertyAnimator. It is expected that this method will return the same
  /// instance for the life of a transition.
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "interruptibleAnimator(using:)")
  optional func interruptibleAnimatorForTransition(_ transitionContext: UIViewControllerContextTransitioning) -> UIViewImplicitlyAnimating
  optional func animationEnded(_ transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : NSObjectProtocol {
  func startInteractiveTransition(_ transitionContext: UIViewControllerContextTransitioning)
  optional var completionSpeed: CGFloat { get }
  @available(iOS 2.0, *)
  optional var completionCurve: UIView.AnimationCurve { get }

  /// In 10.0, if an object conforming to UIViewControllerAnimatedTransitioning is
  /// known to be interruptible, it is possible to start it as if it was not
  /// interactive and then interrupt the transition and interact with it. In this
  /// case, implement this method and return NO. If an interactor does not
  /// implement this method, YES is assumed.
  @available(iOS 10.0, *)
  optional var wantsInteractiveStart: Bool { get }
}
protocol UIViewControllerTransitioningDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(swift, obsoleted: 3, renamed: "animationController(forPresented:presenting:source:)")
  optional func animationControllerForPresentedController(_ presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 2.0, *)
  optional func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(swift, obsoleted: 3, renamed: "animationController(forDismissed:)")
  optional func animationControllerForDismissedController(_ dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(swift, obsoleted: 3, renamed: "interactionControllerForPresentation(using:)")
  optional func interactionControllerForPresentation(_ animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(swift, obsoleted: 3, renamed: "interactionControllerForDismissal(using:)")
  optional func interactionControllerForDismissal(_ animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  optional func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "presentationController(forPresented:presenting:source:)")
  optional func presentationControllerForPresentedViewController(_ presented: UIViewController, presentingViewController presenting: UIViewController?, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(iOS 7.0, *)
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {

  /// This is the non-interactive duration that was returned when the
  /// animators transitionDuration: method was called when the transition started.
  var duration: CGFloat { get }

  /// The last percentComplete value specified by updateInteractiveTransition:
  var percentComplete: CGFloat { get }

  /// completionSpeed defaults to 1.0 which corresponds to a completion duration of
  /// (1 - percentComplete)*duration.  It must be greater than 0.0. The actual
  /// completion is inversely proportional to the completionSpeed.  This can be set
  /// before cancelInteractiveTransition or finishInteractiveTransition is called
  /// in order to speed up or slow down the non interactive part of the
  /// transition.
  var completionSpeed: CGFloat

  /// When the interactive part of the transition has completed, this property can
  /// be set to indicate a different animation curve. It defaults to UIViewAnimationCurveEaseInOut.
  /// Note that during the interactive portion of the animation the timing curve is linear. 
  var completionCurve: UIView.AnimationCurve

  /// For an interruptible animator, one can specify a different timing curve provider to use when the
  /// transition is continued. This property is ignored if the animated transitioning object does not
  /// vend an interruptible animator.
  @available(iOS 10.0, *)
  var timingCurve: UITimingCurveProvider?

  /// Set this to NO in order to start an interruptible transition non
  /// interactively. By default this is YES, which is consistent with the behavior
  /// before 10.0.
  @available(iOS 10.0, *)
  var wantsInteractiveStart: Bool

  /// Use this method to pause a running interruptible animator. This will ensure that all blocks
  /// provided by a transition coordinator's notifyWhenInteractionChangesUsingBlock: method
  /// are executed when a transition moves in and out of an interactive mode.
  @available(iOS 10.0, *)
  func pause()

  /// Use this method to pause a running interruptible animator. This will ensure that all blocks
  /// provided by a transition coordinator's notifyWhenInteractionChangesUsingBlock: method
  /// are executed when a transition moves in and out of an interactive mode.
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "pause()")
  func pauseInteractiveTransition()
  func update(_ percentComplete: CGFloat)
  @available(swift, obsoleted: 3, renamed: "update(_:)")
  func updateInteractiveTransition(_ percentComplete: CGFloat)
  func cancel()
  @available(swift, obsoleted: 3, renamed: "cancel()")
  func cancelInteractiveTransition()
  func finish()
  @available(swift, obsoleted: 3, renamed: "finish()")
  func finishInteractiveTransition()
  init()
  @available(iOS 7.0, *)
  func startInteractiveTransition(_ transitionContext: UIViewControllerContextTransitioning)
}
