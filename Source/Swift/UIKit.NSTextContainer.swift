@_exported import Foundation

@available(iOS 7.0, *)
class NSTextContainer : NSObject, NSSecureCoding, NSTextLayoutOrientationProvider {

  /**************************** Initialization ****************************/
  @available(iOS 7.0, *)
  init(size: CGSize)
  init(coder: NSCoder)

  /**************************** Layout ****************************/
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(iOS 9.0, *)
  func replaceLayoutManager(_ newLayoutManager: NSLayoutManager)

  /************************* Container shape properties *************************/
  @available(iOS 7.0, *)
  var size: CGSize
  @available(iOS 7.0, *)
  var exclusionPaths: [UIBezierPath]
  @available(iOS 7.0, *)
  var lineBreakMode: NSLineBreakMode

  /************************* Layout constraint properties *************************/
  var lineFragmentPadding: CGFloat
  @available(iOS 7.0, *)
  var maximumNumberOfLines: Int

  /**************************** Line fragments ****************************/
  @available(iOS 7.0, *)
  func lineFragmentRect(forProposedRect proposedRect: CGRect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<CGRect>?) -> CGRect

  /**************************** Line fragments ****************************/
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "lineFragmentRect(forProposedRect:at:writingDirection:remaining:)")
  func lineFragmentRectForProposedRect(_ proposedRect: CGRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect: UnsafeMutablePointer<CGRect>?) -> CGRect
  @available(iOS 9.0, *)
  var isSimpleRectangularTextContainer: Bool { get }
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "isSimpleRectangularTextContainer")
  var simpleRectangularTextContainer: Bool { get }

  /**************************** View synchronization ****************************/
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  convenience init()
  @available(iOS 7.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 7.0, *)
  var layoutOrientation: NSLayoutManager.TextLayoutOrientation { get }
  @available(iOS 7.0, *)
  func encode(with coder: NSCoder)
}
