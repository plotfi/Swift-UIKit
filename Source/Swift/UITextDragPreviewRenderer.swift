@_exported import Foundation

@available(iOS 11.0, *)
class UITextDragPreviewRenderer : NSObject {
  convenience init(layoutManager: NSLayoutManager, range: NSRange)
  init(layoutManager: NSLayoutManager, range: NSRange, unifyRects: Bool)
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  convenience init()
  var layoutManager: NSLayoutManager { get }
  var image: UIImage { get }
  var firstLineRect: CGRect { get }
  var bodyRect: CGRect { get }
  var lastLineRect: CGRect { get }
  func adjust(firstLineRect: UnsafeMutablePointer<CGRect>, bodyRect: UnsafeMutablePointer<CGRect>, lastLineRect: UnsafeMutablePointer<CGRect>, textOrigin origin: CGPoint)
  @available(swift, obsoleted: 3, renamed: "adjust(firstLineRect:bodyRect:lastLineRect:textOrigin:)")
  func adjustFirstLineRect(_ firstLineRect: UnsafeMutablePointer<CGRect>, bodyRect: UnsafeMutablePointer<CGRect>, lastLineRect: UnsafeMutablePointer<CGRect>, textOrigin origin: CGPoint)
}
