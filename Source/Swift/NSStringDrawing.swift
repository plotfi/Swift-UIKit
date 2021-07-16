@_exported import Foundation

@available(iOS 6.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  @available(iOS 7.0, *)
  func size(withAttributes attrs: [NSAttributedString.Key : Any]? = nil) -> CGSize
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "size(withAttributes:)")
  func size(attributes attrs: [NSAttributedString.Key : Any]? = nil) -> CGSize
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "size(withAttributes:)")
  func sizeWithAttributes(_ attrs: [NSAttributedString.Key : Any]? = nil) -> CGSize
  @available(iOS 7.0, *)
  func draw(at point: CGPoint, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "draw(at:withAttributes:)")
  func drawAtPoint(_ point: CGPoint, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
  @available(iOS 7.0, *)
  func draw(in rect: CGRect, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "draw(in:withAttributes:)")
  func drawInRect(_ rect: CGRect, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
}
extension NSAttributedString {
  @available(iOS 6.0, *)
  func size() -> CGSize
  @available(iOS 6.0, *)
  func draw(at point: CGPoint)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "draw(at:)")
  func drawAtPoint(_ point: CGPoint)
  @available(iOS 6.0, *)
  func draw(in rect: CGRect)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "draw(in:)")
  func drawInRect(_ rect: CGRect)
}
@available(iOS 6.0, *)
struct NSStringDrawingOptions : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  typealias RawValue = Int
  typealias Element = NSStringDrawingOptions
  typealias ArrayLiteralElement = NSStringDrawingOptions
  static var usesLineFragmentOrigin: NSStringDrawingOptions { get }
  @available(swift, obsoleted: 3, renamed: "usesLineFragmentOrigin")
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var usesFontLeading: NSStringDrawingOptions { get }
  @available(swift, obsoleted: 3, renamed: "usesFontLeading")
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var usesDeviceMetrics: NSStringDrawingOptions { get }
  @available(swift, obsoleted: 3, renamed: "usesDeviceMetrics")
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(iOS 6.0, *)
  static var truncatesLastVisibleLine: NSStringDrawingOptions { get }
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "truncatesLastVisibleLine")
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(iOS 7.0, *)
  func draw(with rect: CGRect, options: NSStringDrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "draw(with:options:attributes:context:)")
  func drawWithRect(_ rect: CGRect, options: NSStringDrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?)
  @available(iOS 7.0, *)
  func boundingRect(with size: CGSize, options: NSStringDrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?) -> CGRect
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "boundingRect(with:options:attributes:context:)")
  func boundingRectWithSize(_ size: CGSize, options: NSStringDrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(iOS 6.0, *)
  func draw(with rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "draw(with:options:context:)")
  func drawWithRect(_ rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(iOS 6.0, *)
  func boundingRect(with size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "boundingRect(with:options:context:)")
  func boundingRectWithSize(_ size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
}

/************************ Deprecated ************************/
extension NSStringDrawingContext {
  @available(iOS, unavailable, introduced: 6.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var minimumTrackingAdjustment: CGFloat
  @available(iOS, unavailable, introduced: 6.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var actualTrackingAdjustment: CGFloat { get }
}
