@_exported import Foundation

@available(iOS 10.0, *)
class UIGraphicsRendererFormat : NSObject, NSCopying {
  @available(iOS 10.0, *)
  class func `default`() -> Self
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "default()")
  class func defaultFormat() -> Self
  @available(iOS 11.0, *)
  class func preferred() -> Self
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "preferred()")
  class func preferredFormat() -> Self
  var bounds: CGRect { get }
  init()
  @available(iOS 10.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 10.0, *)
class UIGraphicsRendererContext : NSObject {
  var cgContext: CGContext { get }
  @available(swift, obsoleted: 3, renamed: "cgContext")
  var CGContext: CGContext { get }
  var format: UIGraphicsRendererFormat { get }
  func fill(_ rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "fill(_:)")
  func fillRect(_ rect: CGRect)
  func fill(_ rect: CGRect, blendMode: CGBlendMode)
  @available(swift, obsoleted: 3, renamed: "fill(_:blendMode:)")
  func fillRect(_ rect: CGRect, blendMode: CGBlendMode)
  func stroke(_ rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "stroke(_:)")
  func strokeRect(_ rect: CGRect)
  func stroke(_ rect: CGRect, blendMode: CGBlendMode)
  @available(swift, obsoleted: 3, renamed: "stroke(_:blendMode:)")
  func strokeRect(_ rect: CGRect, blendMode: CGBlendMode)
  func clip(to rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "clip(to:)")
  func clipToRect(_ rect: CGRect)
  init()
}
@available(iOS 10.0, *)
class UIGraphicsRenderer : NSObject {
  convenience init(bounds: CGRect)
  init(bounds: CGRect, format: UIGraphicsRendererFormat)
  var format: UIGraphicsRendererFormat { get }
  var allowsImageOutput: Bool { get }
  convenience init()
}
