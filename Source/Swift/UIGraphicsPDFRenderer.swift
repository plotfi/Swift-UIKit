@_exported import Foundation

@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIGraphicsPDFRenderer.DrawingActions")
typealias UIGraphicsPDFDrawingActions = UIGraphicsPDFRenderer.DrawingActions
extension UIGraphicsPDFRenderer {
  @available(iOS 10.0, *)
  typealias DrawingActions = (UIGraphicsPDFRendererContext) -> Void
}
@available(iOS 10.0, *)
class UIGraphicsPDFRendererFormat : UIGraphicsRendererFormat {
  var documentInfo: [String : Any]
  init()
}
@available(iOS 10.0, *)
class UIGraphicsPDFRendererContext : UIGraphicsRendererContext {
  var pdfContextBounds: CGRect { get }
  func beginPage()
  func beginPage(withBounds bounds: CGRect, pageInfo: [String : Any])
  @available(swift, obsoleted: 3, renamed: "beginPage(withBounds:pageInfo:)")
  func beginPageWithBounds(_ bounds: CGRect, pageInfo: [String : Any])
  func setURL(_ url: URL, for rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "setURL(_:for:)")
  func setURL(_ url: URL, forRect rect: CGRect)
  func addDestination(withName name: String, at point: CGPoint)
  @available(swift, obsoleted: 3, renamed: "addDestination(withName:at:)")
  func addDestinationWithName(_ name: String, atPoint point: CGPoint)
  func setDestinationWithName(_ name: String, for rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "setDestinationWithName(_:for:)")
  func setDestinationWithName(_ name: String, forRect rect: CGRect)
  init()
}
@available(iOS 10.0, *)
class UIGraphicsPDFRenderer : UIGraphicsRenderer {
  init(bounds: CGRect, format: UIGraphicsPDFRendererFormat)
  func writePDF(to url: URL, withActions actions: (UIGraphicsPDFRendererContext) -> Void) throws
  @available(swift, obsoleted: 3, renamed: "writePDF(to:withActions:)")
  func writePDFToURL(_ url: URL, withActions actions: (UIGraphicsPDFRendererContext) -> Void) throws
  func pdfData(actions: (UIGraphicsPDFRendererContext) -> Void) -> Data
  @available(swift, obsoleted: 3, renamed: "pdfData(actions:)")
  func PDFDataWithActions(_ actions: (UIGraphicsPDFRendererContext) -> Void) -> Data
  convenience init(bounds: CGRect)
  convenience init()
}
