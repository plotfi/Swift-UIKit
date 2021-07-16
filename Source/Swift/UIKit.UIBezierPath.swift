@_exported import Foundation

@available(iOS 3.2, *)
class UIBezierPath : NSObject, NSCopying, NSSecureCoding {
  @available(*, unavailable, message: "superseded by import of -[UIBezierPath init]")
  convenience init()
  @available(*, unavailable, renamed: "init()", message: "Not available in Swift")
  class func bezierPath() -> Self
  convenience init(rect: CGRect)
  @available(*, unavailable, renamed: "init(rect:)", message: "Not available in Swift")
  class func bezierPathWithRect(_ rect: CGRect) -> Self
  convenience init(ovalIn rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "init(ovalIn:)")
  convenience init(ovalInRect rect: CGRect)
  @available(*, unavailable, renamed: "init(ovalIn:)", message: "Not available in Swift")
  class func bezierPathWithOvalInRect(_ rect: CGRect) -> Self
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  @available(*, unavailable, renamed: "init(roundedRect:cornerRadius:)", message: "Not available in Swift")
  class func bezierPathWithRoundedRect(_ rect: CGRect, cornerRadius: CGFloat) -> Self
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  @available(*, unavailable, renamed: "init(roundedRect:byRoundingCorners:cornerRadii:)", message: "Not available in Swift")
  class func bezierPathWithRoundedRect(_ rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize) -> Self
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  @available(*, unavailable, renamed: "init(arcCenter:radius:startAngle:endAngle:clockwise:)", message: "Not available in Swift")
  class func bezierPathWithArcCenter(_ center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool) -> Self
  convenience init(cgPath CGPath: CGPath)
  @available(swift, obsoleted: 3, renamed: "init(cgPath:)")
  convenience init(CGPath: CGPath)
  @available(*, unavailable, renamed: "init(cgPath:)", message: "Not available in Swift")
  class func bezierPathWithCGPath(_ CGPath: CGPath) -> Self
  init()
  init?(coder: NSCoder)
  var cgPath: CGPath
  @available(swift, obsoleted: 3, renamed: "cgPath")
  var CGPath: CGPath
  func move(to point: CGPoint)
  @available(swift, obsoleted: 3, renamed: "move(to:)")
  func moveToPoint(_ point: CGPoint)
  func addLine(to point: CGPoint)
  @available(swift, obsoleted: 3, renamed: "addLine(to:)")
  func addLineToPoint(_ point: CGPoint)
  func addCurve(to endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  @available(swift, obsoleted: 3, renamed: "addCurve(to:controlPoint1:controlPoint2:)")
  func addCurveToPoint(_ endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurve(to endPoint: CGPoint, controlPoint: CGPoint)
  @available(swift, obsoleted: 3, renamed: "addQuadCurve(to:controlPoint:)")
  func addQuadCurveToPoint(_ endPoint: CGPoint, controlPoint: CGPoint)
  @available(iOS 4.0, *)
  func addArc(withCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "addArc(withCenter:radius:startAngle:endAngle:clockwise:)")
  func addArcWithCenter(_ center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func close()
  @available(swift, obsoleted: 3, renamed: "close()")
  func closePath()
  func removeAllPoints()
  func append(_ bezierPath: UIBezierPath)
  @available(swift, obsoleted: 3, renamed: "append(_:)")
  func appendPath(_ bezierPath: UIBezierPath)
  @available(iOS 6.0, *)
  func reversing() -> UIBezierPath
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "reversing()")
  func bezierPathByReversingPath() -> UIBezierPath
  func apply(_ transform: CGAffineTransform)
  @available(swift, obsoleted: 3, renamed: "apply(_:)")
  func applyTransform(_ transform: CGAffineTransform)
  var isEmpty: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isEmpty")
  var empty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func contains(_ point: CGPoint) -> Bool
  @available(swift, obsoleted: 3, renamed: "contains(_:)")
  func containsPoint(_ point: CGPoint) -> Bool
  var lineWidth: CGFloat
  var lineCapStyle: CGLineCap
  var lineJoinStyle: CGLineJoin
  var miterLimit: CGFloat
  var flatness: CGFloat
  var usesEvenOddFillRule: Bool
  func setLineDash(_ pattern: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat)
  func getLineDash(_ pattern: UnsafeMutablePointer<CGFloat>?, count: UnsafeMutablePointer<Int>?, phase: UnsafeMutablePointer<CGFloat>?)
  func fill()
  func stroke()
  func fill(with blendMode: CGBlendMode, alpha: CGFloat)
  @available(swift, obsoleted: 3, renamed: "fill(with:alpha:)")
  func fillWithBlendMode(_ blendMode: CGBlendMode, alpha: CGFloat)
  func stroke(with blendMode: CGBlendMode, alpha: CGFloat)
  @available(swift, obsoleted: 3, renamed: "stroke(with:alpha:)")
  func strokeWithBlendMode(_ blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
  @available(iOS 3.2, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 3.2, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 3.2, *)
  func encode(with coder: NSCoder)
}
