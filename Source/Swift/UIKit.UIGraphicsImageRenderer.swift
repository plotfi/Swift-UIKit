@_exported import Foundation

@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIGraphicsImageRenderer.DrawingActions")
typealias UIGraphicsImageDrawingActions = UIGraphicsImageRenderer.DrawingActions
extension UIGraphicsImageRenderer {
  @available(iOS 10.0, *)
  typealias DrawingActions = (UIGraphicsImageRendererContext) -> Void
}
@available(iOS 12.0, *)
@available(swift, obsoleted: 3, renamed: "UIGraphicsImageRendererFormat.Range")
typealias UIGraphicsImageRendererFormatRange = UIGraphicsImageRendererFormat.Range
extension UIGraphicsImageRendererFormat {
  @available(iOS 12.0, *)
  enum Range : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unspecified
    @available(swift, obsoleted: 3, renamed: "unspecified")
    static var Unspecified: UIGraphicsImageRendererFormat.Range { get }
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UIGraphicsImageRendererFormat.Range { get }
    case extended
    @available(swift, obsoleted: 3, renamed: "extended")
    static var Extended: UIGraphicsImageRendererFormat.Range { get }
    case standard
    @available(swift, obsoleted: 3, renamed: "standard")
    static var Standard: UIGraphicsImageRendererFormat.Range { get }
  }
}
@available(iOS 10.0, *)
class UIGraphicsImageRendererFormat : UIGraphicsRendererFormat {
  var scale: CGFloat
  var opaque: Bool
  @available(iOS, introduced: 10.0, deprecated: 12.0, message: "Use the preferredRange property instead")
  var prefersExtendedRange: Bool
  @available(iOS 12.0, *)
  var preferredRange: UIGraphicsImageRendererFormat.Range
  @available(iOS 11.0, *)
  convenience init(for traitCollection: UITraitCollection)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(for:)")
  convenience init(forTraitCollection traitCollection: UITraitCollection)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(for:)", message: "Not available in Swift")
  class func formatForTraitCollection(_ traitCollection: UITraitCollection) -> Self
  init()
}
@available(iOS 10.0, *)
class UIGraphicsImageRendererContext : UIGraphicsRendererContext {
  var currentImage: UIImage { get }
  init()
}
@available(iOS 10.0, *)
class UIGraphicsImageRenderer : UIGraphicsRenderer {
  convenience init(size: CGSize)
  init(size: CGSize, format: UIGraphicsImageRendererFormat)
  init(bounds: CGRect, format: UIGraphicsImageRendererFormat)
  func image(actions: (UIGraphicsImageRendererContext) -> Void) -> UIImage
  @available(swift, obsoleted: 3, renamed: "image(actions:)")
  func imageWithActions(_ actions: (UIGraphicsImageRendererContext) -> Void) -> UIImage
  func pngData(actions: (UIGraphicsImageRendererContext) -> Void) -> Data
  @available(swift, obsoleted: 3, renamed: "pngData(actions:)")
  func PNGDataWithActions(_ actions: (UIGraphicsImageRendererContext) -> Void) -> Data
  func jpegData(withCompressionQuality compressionQuality: CGFloat, actions: (UIGraphicsImageRendererContext) -> Void) -> Data
  @available(swift, obsoleted: 3, renamed: "jpegData(withCompressionQuality:actions:)")
  func JPEGDataWithCompressionQuality(_ compressionQuality: CGFloat, actions: (UIGraphicsImageRendererContext) -> Void) -> Data
  convenience init(bounds: CGRect)
  convenience init()
}
