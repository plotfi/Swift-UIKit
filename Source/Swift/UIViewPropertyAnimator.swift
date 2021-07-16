@_exported import Foundation

@available(iOS 10.0, *)
class UIViewPropertyAnimator : NSObject, UIViewImplicitlyAnimating, NSCopying {
  @NSCopying var timingParameters: UITimingCurveProvider? { get }
  var duration: TimeInterval { get }

  /// Defaults to 0. This property is set when calling -[UIView startAnimationAfterDelay:].
  var delay: TimeInterval { get }

  /// Defaults to YES. Raises if set on an active animator.
  var isUserInteractionEnabled: Bool

  /// Defaults to YES. Raises if set on an active animator.
  @available(swift, obsoleted: 3, renamed: "isUserInteractionEnabled")
  var userInteractionEnabled: Bool

  /// Defaults to NO. Set if you need to manage the the hit-testing of animating view hierarchies
  var isManualHitTestingEnabled: Bool

  /// Defaults to NO. Set if you need to manage the the hit-testing of animating view hierarchies
  @available(swift, obsoleted: 3, renamed: "isManualHitTestingEnabled")
  var manualHitTestingEnabled: Bool

  /// Defaults to YES. Raises if set on an active animator.
  var isInterruptible: Bool

  /// Defaults to YES. Raises if set on an active animator.
  @available(swift, obsoleted: 3, renamed: "isInterruptible")
  var interruptible: Bool

  /// Defaults to YES. Provides the ability for an animator to pause and scrub either linearly or using the animator’s current timing.
  @available(iOS 11.0, *)
  var scrubsLinearly: Bool

  /// Defaults to NO. Provides the ability for an animator to pause on completion instead of transitioning to the .inactive state.
  @available(iOS 11.0, *)
  var pausesOnCompletion: Bool
  init(duration: TimeInterval, timingParameters parameters: UITimingCurveProvider)

  /// All convenience initializers return an animator which is not running.
  convenience init(duration: TimeInterval, curve: UIView.AnimationCurve, animations: (() -> Void)? = nil)
  convenience init(duration: TimeInterval, controlPoint1 point1: CGPoint, controlPoint2 point2: CGPoint, animations: (() -> Void)? = nil)
  convenience init(duration: TimeInterval, dampingRatio ratio: CGFloat, animations: (() -> Void)? = nil)

  /// @abstract This method provides compatibility with the old style [UIView
  /// animationWithDuration:...]  method. It is also useful for controlling
  /// how animations options are inherited.
  /// @discussion Creates a UIViewPropertyAnimator, sets the duration, options, etc. And starts the
  /// animation with the associated animation and completion blocks. The animator
  /// returned is interruptible only if it is not called from within the execution
  /// block of another animation (animator or legacy). Note that if it is called
  /// within the execution block of another animation it will inherit the duration
  /// and other characteristics of that animation UNLESS the appropriate override
  /// options have been specified. Also note that if is called within the execution
  /// block of another propertyAnimator that is interruptible, the implicit
  /// animations defined by this call will be tracked by the outer
  /// propertyAnimator.
  class func runningPropertyAnimator(withDuration duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((UIViewAnimatingPosition) -> Void)? = nil) -> Self

  /// @abstract This method provides compatibility with the old style [UIView
  /// animationWithDuration:...]  method. It is also useful for controlling
  /// how animations options are inherited.
  /// @discussion Creates a UIViewPropertyAnimator, sets the duration, options, etc. And starts the
  /// animation with the associated animation and completion blocks. The animator
  /// returned is interruptible only if it is not called from within the execution
  /// block of another animation (animator or legacy). Note that if it is called
  /// within the execution block of another animation it will inherit the duration
  /// and other characteristics of that animation UNLESS the appropriate override
  /// options have been specified. Also note that if is called within the execution
  /// block of another propertyAnimator that is interruptible, the implicit
  /// animations defined by this call will be tracked by the outer
  /// propertyAnimator.
  @available(swift, obsoleted: 3, renamed: "runningPropertyAnimator(withDuration:delay:options:animations:completion:)")
  class func runningPropertyAnimatorWithDuration(_ duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((UIViewAnimatingPosition) -> Void)? = nil) -> Self

  /// Animatable view properties that are set by the animation block will be
  /// animated to their new values. The animations will commence at delayFactor *
  /// animator.duration seconds into the animation. The duration of the animation
  /// will be (1 - delayFactor) * animator.duration seconds.
  func addAnimations(_ animation: @escaping () -> Void, delayFactor: CGFloat)

  /// Animatable view properties that are set by the animation block will be
  /// animated to their new values. Starting an animator that does not contain any animation blocks
  /// will start the animator in a transient paused state. While in this state, submitting an animation
  /// block will automatically start animating any animatable view properties set therein. When the
  /// animator is stopped, either naturally completing or explicitly, any animation blocks and completion
  /// handlers are invalidated. Immediately calling `startAnimation` again on the animator, since there
  /// are no animation blocks, will start the animator in a transient paused state.
  func addAnimations(_ animation: @escaping () -> Void)
  func addCompletion(_ completion: @escaping (UIViewAnimatingPosition) -> Void)
  func addCompletion() async -> UIViewAnimatingPosition

  /// Provides a means to continue an animation in either the forward or reversed
  /// directions with new timing parameters and duration.  The durationFactor is in
  /// terms of a unit duration defined by the originally specified duration of the
  /// animator. It is used to specify the remaining time for the animation. When
  /// called, it behaves as if the animation was started from its current position
  /// with a new duration and timing parameters.
  func continueAnimation(withTimingParameters parameters: UITimingCurveProvider?, durationFactor: CGFloat)

  /// Provides a means to continue an animation in either the forward or reversed
  /// directions with new timing parameters and duration.  The durationFactor is in
  /// terms of a unit duration defined by the originally specified duration of the
  /// animator. It is used to specify the remaining time for the animation. When
  /// called, it behaves as if the animation was started from its current position
  /// with a new duration and timing parameters.
  @available(swift, obsoleted: 3, renamed: "continueAnimation(withTimingParameters:durationFactor:)")
  func continueAnimationWithTimingParameters(_ parameters: UITimingCurveProvider?, durationFactor: CGFloat)
  convenience init()
  @available(iOS 10.0, *)
  var state: UIViewAnimatingState { get }
  @available(iOS 10.0, *)
  var isRunning: Bool { get }
  @available(iOS 10.0, *)
  var isReversed: Bool
  @available(iOS 10.0, *)
  var fractionComplete: CGFloat
  @available(iOS 10.0, *)
  func startAnimation()
  @available(iOS 10.0, *)
  func startAnimation(afterDelay delay: TimeInterval)
  @available(iOS 10.0, *)
  func pauseAnimation()
  @available(iOS 10.0, *)
  func stopAnimation(_ withoutFinishing: Bool)
  @available(iOS 10.0, *)
  func finishAnimation(at finalPosition: UIViewAnimatingPosition)
  @available(iOS 10.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
