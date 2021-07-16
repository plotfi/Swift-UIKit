@_exported import Foundation

@available(iOS 10.0, *)
typealias UIGraphicsDrawingActions = (UIGraphicsRendererContext) -> Void
extension UIGraphicsRenderer {
  @available(iOS 10.0, *)
  class func rendererContextClass() -> AnyClass
  @available(iOS 10.0, *)
  class func context(with format: UIGraphicsRendererFormat) -> CGContext?
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "context(with:)")
  class func contextWithFormat(_ format: UIGraphicsRendererFormat) -> CGContext?
  @available(iOS 10.0, *)
  class func prepare(_ context: CGContext, with rendererContext: UIGraphicsRendererContext)
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "prepare(_:with:)")
  class func prepareCGContext(_ context: CGContext, withRendererContext rendererContext: UIGraphicsRendererContext)
  @available(iOS 10.0, *)
  func runDrawingActions(_ drawingActions: (UIGraphicsRendererContext) -> Void, completionActions: ((UIGraphicsRendererContext) -> Void)? = nil) throws
}
