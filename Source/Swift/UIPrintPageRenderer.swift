@_exported import Foundation

@available(iOS 14.5, *)
enum UIPrintRenderingQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case best
  @available(swift, obsoleted: 3, renamed: "best")
  static var Best: UIPrintRenderingQuality { get }
  case responsive
  @available(swift, obsoleted: 3, renamed: "responsive")
  static var Responsive: UIPrintRenderingQuality { get }
}
@available(iOS 4.2, *)
class UIPrintPageRenderer : NSObject {
  var headerHeight: CGFloat
  var footerHeight: CGFloat
  var paperRect: CGRect { get }
  var printableRect: CGRect { get }
  var numberOfPages: Int { get }
  var printFormatters: [UIPrintFormatter]?
  func printFormattersForPage(at pageIndex: Int) -> [UIPrintFormatter]?
  @available(swift, obsoleted: 3, renamed: "printFormattersForPage(at:)")
  func printFormattersForPageAtIndex(_ pageIndex: Int) -> [UIPrintFormatter]?
  func addPrintFormatter(_ formatter: UIPrintFormatter, startingAtPageAt pageIndex: Int)
  @available(swift, obsoleted: 3, renamed: "addPrintFormatter(_:startingAtPageAt:)")
  func addPrintFormatter(_ formatter: UIPrintFormatter, startingAtPageAtIndex pageIndex: Int)
  @available(iOS 14.5, *)
  func currentRenderingQuality(forRequested requestedRenderingQuality: UIPrintRenderingQuality) -> UIPrintRenderingQuality
  @available(iOS 14.5, *)
  @available(swift, obsoleted: 3, renamed: "currentRenderingQuality(forRequested:)")
  func currentRenderingQualityForRequestedRenderingQuality(_ requestedRenderingQuality: UIPrintRenderingQuality) -> UIPrintRenderingQuality
  func prepare(forDrawingPages range: NSRange)
  @available(swift, obsoleted: 3, renamed: "prepare(forDrawingPages:)")
  func prepareForDrawingPages(_ range: NSRange)
  func drawPage(at pageIndex: Int, in printableRect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawPage(at:in:)")
  func drawPageAtIndex(_ pageIndex: Int, inRect printableRect: CGRect)
  func drawPrintFormatter(_ printFormatter: UIPrintFormatter, forPageAt pageIndex: Int)
  @available(swift, obsoleted: 3, renamed: "drawPrintFormatter(_:forPageAt:)")
  func drawPrintFormatter(_ printFormatter: UIPrintFormatter, forPageAtIndex pageIndex: Int)
  func drawHeaderForPage(at pageIndex: Int, in headerRect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawHeaderForPage(at:in:)")
  func drawHeaderForPageAtIndex(_ pageIndex: Int, inRect headerRect: CGRect)
  func drawContentForPage(at pageIndex: Int, in contentRect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawContentForPage(at:in:)")
  func drawContentForPageAtIndex(_ pageIndex: Int, inRect contentRect: CGRect)
  func drawFooterForPage(at pageIndex: Int, in footerRect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawFooterForPage(at:in:)")
  func drawFooterForPageAtIndex(_ pageIndex: Int, inRect footerRect: CGRect)
  init()
}
