@_exported import Foundation

@available(iOS 10.0, *)
enum UIViewAnimatingState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case inactive
  @available(swift, obsoleted: 3, renamed: "inactive")
  static var Inactive: UIViewAnimatingState { get }
  case active
  @available(swift, obsoleted: 3, renamed: "active")
  static var Active: UIViewAnimatingState { get }
  case stopped
  @available(swift, obsoleted: 3, renamed: "stopped")
  static var Stopped: UIViewAnimatingState { get }
}
@available(iOS 10.0, *)
enum UIViewAnimatingPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case end
  @available(swift, obsoleted: 3, renamed: "end")
  static var End: UIViewAnimatingPosition { get }
  case start
  @available(swift, obsoleted: 3, renamed: "start")
  static var Start: UIViewAnimatingPosition { get }
  case current
  @available(swift, obsoleted: 3, renamed: "current")
  static var Current: UIViewAnimatingPosition { get }
}
protocol UIViewAnimating : NSObjectProtocol {
  @available(iOS 10.0, *)
  var state: UIViewAnimatingState { get }
  var isRunning: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isRunning")
  var running: Bool { get }
  var isReversed: Bool { get set }
  @available(swift, obsoleted: 3, renamed: "isReversed")
  var reversed: Bool { get set }
  var fractionComplete: CGFloat { get set }
  func startAnimation()
  func startAnimation(afterDelay delay: TimeInterval)
  @available(swift, obsoleted: 3, renamed: "startAnimation(afterDelay:)")
  func startAnimationAfterDelay(_ delay: TimeInterval)
  func pauseAnimation()
  func stopAnimation(_ withoutFinishing: Bool)
  @available(iOS 10.0, *)
  func finishAnimation(at finalPosition: UIViewAnimatingPosition)
  @available(swift, obsoleted: 3, renamed: "finishAnimation(at:)")
  func finishAnimationAtPosition(_ finalPosition: UIViewAnimatingPosition)
}
protocol UIViewImplicitlyAnimating : UIViewAnimating {
  optional func addAnimations(_ animation: @escaping () -> Void, delayFactor: CGFloat)
  optional func addAnimations(_ animation: @escaping () -> Void)
  @available(iOS 10.0, *)
  optional func addCompletion(_ completion: @escaping (UIViewAnimatingPosition) -> Void)
  @available(iOS 10.0, *)
  optional func addCompletion() async -> UIViewAnimatingPosition
  optional func continueAnimation(withTimingParameters parameters: UITimingCurveProvider?, durationFactor: CGFloat)
  @available(swift, obsoleted: 3, renamed: "continueAnimation(withTimingParameters:durationFactor:)")
  optional func continueAnimationWithTimingParameters(_ parameters: UITimingCurveProvider?, durationFactor: CGFloat)
}
