@_exported import Foundation

@available(iOS 4.2, *)
class UIPrintFormatter : NSObject, NSCopying {
  weak var printPageRenderer: @sil_weak UIPrintPageRenderer? { get }
  func removeFromPrintPageRenderer()
  var maximumContentHeight: CGFloat
  var maximumContentWidth: CGFloat
  @available(iOS, introduced: 4.2, deprecated: 10.0)
  var contentInsets: UIEdgeInsets
  var perPageContentInsets: UIEdgeInsets
  var startPage: Int
  var pageCount: Int { get }
  func rectForPage(at pageIndex: Int) -> CGRect
  @available(swift, obsoleted: 3, renamed: "rectForPage(at:)")
  func rectForPageAtIndex(_ pageIndex: Int) -> CGRect
  func draw(in rect: CGRect, forPageAt pageIndex: Int)
  @available(swift, obsoleted: 3, renamed: "draw(in:forPageAt:)")
  func drawInRect(_ rect: CGRect, forPageAtIndex pageIndex: Int)
  init()
  @available(iOS 4.2, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 4.2, *)
class UISimpleTextPrintFormatter : UIPrintFormatter {
  init(text: String)
  @available(iOS 7.0, *)
  init(attributedText: NSAttributedString)
  var text: String?
  @available(iOS 7.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var font: UIFont?
  var color: UIColor?
  var textAlignment: NSTextAlignment
  init()
}
@available(iOS 4.2, *)
class UIMarkupTextPrintFormatter : UIPrintFormatter {
  init(markupText: String)
  var markupText: String?
  init()
}
@available(iOS 4.2, *)
class UIViewPrintFormatter : UIPrintFormatter {
  var view: UIView { get }
  init()
}
extension UIView {
  func viewPrintFormatter() -> UIViewPrintFormatter
  func draw(_ rect: CGRect, for formatter: UIViewPrintFormatter)
  @available(swift, obsoleted: 3, renamed: "draw(_:for:)")
  func drawRect(_ rect: CGRect, forViewPrintFormatter formatter: UIViewPrintFormatter)
}
