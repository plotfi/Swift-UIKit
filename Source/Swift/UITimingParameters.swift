@_exported import Foundation

@available(iOS 10.0, *)
class UICubicTimingParameters : NSObject, UITimingCurveProvider {
  var animationCurve: UIView.AnimationCurve { get }
  var controlPoint1: CGPoint { get }
  var controlPoint2: CGPoint { get }
  init()
  init?(coder: NSCoder)
  init(animationCurve curve: UIView.AnimationCurve)
  init(controlPoint1 point1: CGPoint, controlPoint2 point2: CGPoint)
  @available(iOS 10.0, *)
  var timingCurveType: UITimingCurveType { get }
  @available(iOS 10.0, *)
  var cubicTimingParameters: UICubicTimingParameters? { get }
  @available(iOS 10.0, *)
  var springTimingParameters: UISpringTimingParameters? { get }
  @available(iOS 10.0, *)
  func encode(with coder: NSCoder)
  @available(iOS 10.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 10.0, *)
class UISpringTimingParameters : NSObject, UITimingCurveProvider {
  var initialVelocity: CGVector { get }
  init()
  init?(coder: NSCoder)
  init(dampingRatio ratio: CGFloat, initialVelocity velocity: CGVector)
  init(mass: CGFloat, stiffness: CGFloat, damping: CGFloat, initialVelocity velocity: CGVector)
  convenience init(dampingRatio ratio: CGFloat)
  @available(iOS 10.0, *)
  var timingCurveType: UITimingCurveType { get }
  @available(iOS 10.0, *)
  var cubicTimingParameters: UICubicTimingParameters? { get }
  @available(iOS 10.0, *)
  var springTimingParameters: UISpringTimingParameters? { get }
  @available(iOS 10.0, *)
  func encode(with coder: NSCoder)
  @available(iOS 10.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
