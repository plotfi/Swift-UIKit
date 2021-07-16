@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIImage.Orientation")
typealias UIImageOrientation = UIImage.Orientation
extension UIImage {
  enum Orientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case up
    @available(swift, obsoleted: 3, renamed: "up")
    static var Up: UIImage.Orientation { get }
    case down
    @available(swift, obsoleted: 3, renamed: "down")
    static var Down: UIImage.Orientation { get }
    case left
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UIImage.Orientation { get }
    case right
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UIImage.Orientation { get }
    case upMirrored
    @available(swift, obsoleted: 3, renamed: "upMirrored")
    static var UpMirrored: UIImage.Orientation { get }
    case downMirrored
    @available(swift, obsoleted: 3, renamed: "downMirrored")
    static var DownMirrored: UIImage.Orientation { get }
    case leftMirrored
    @available(swift, obsoleted: 3, renamed: "leftMirrored")
    static var LeftMirrored: UIImage.Orientation { get }
    case rightMirrored
    @available(swift, obsoleted: 3, renamed: "rightMirrored")
    static var RightMirrored: UIImage.Orientation { get }
  }
  enum ResizingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case tile
    @available(swift, obsoleted: 3, renamed: "tile")
    static var Tile: UIImage.ResizingMode { get }
    case stretch
    @available(swift, obsoleted: 3, renamed: "stretch")
    static var Stretch: UIImage.ResizingMode { get }
  }
  @available(iOS 7.0, *)
  enum RenderingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UIImage.RenderingMode { get }
    case alwaysOriginal
    @available(swift, obsoleted: 3, renamed: "alwaysOriginal")
    static var AlwaysOriginal: UIImage.RenderingMode { get }
    case alwaysTemplate
    @available(swift, obsoleted: 3, renamed: "alwaysTemplate")
    static var AlwaysTemplate: UIImage.RenderingMode { get }
  }
  func pngData() -> Data?
  func jpegData(compressionQuality: CGFloat) -> Data?
}
@available(swift, obsoleted: 4.2, renamed: "UIImage.ResizingMode")
typealias UIImageResizingMode = UIImage.ResizingMode
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIImage.RenderingMode")
typealias UIImageRenderingMode = UIImage.RenderingMode
@available(iOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  @available(iOS 13.0, *)
  /*not inherited*/ init?(systemName name: String)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "init(systemName:)")
  class func systemImageNamed(_ name: String) -> UIImage?
  @available(iOS 13.0, *)
  /*not inherited*/ init?(systemName name: String, withConfiguration configuration: UIImage.Configuration?)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "init(systemName:withConfiguration:)")
  class func systemImageNamed(_ name: String, withConfiguration configuration: UIImage.Configuration?) -> UIImage?
  @available(iOS 13.0, *)
  /*not inherited*/ init?(systemName name: String, compatibleWith traitCollection: UITraitCollection?)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "init(systemName:compatibleWith:)")
  class func systemImageNamed(_ name: String, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> UIImage?
  /*not inherited*/ init?(named name: String)
  @available(*, unavailable, renamed: "init(named:)", message: "Not available in Swift")
  class func imageNamed(_ name: String) -> UIImage?
  @available(iOS 13.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, with configuration: UIImage.Configuration?)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "init(named:in:with:)")
  /*not inherited*/ init?(named name: String, inBundle bundle: Bundle?, withConfiguration configuration: UIImage.Configuration?)
  @available(iOS 13.0, *)
  @available(*, unavailable, renamed: "init(named:in:with:)", message: "Not available in Swift")
  class func imageNamed(_ name: String, inBundle bundle: Bundle?, withConfiguration configuration: UIImage.Configuration?) -> UIImage?
  @available(iOS 8.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "init(named:in:compatibleWith:)")
  /*not inherited*/ init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  @available(*, unavailable, renamed: "init(named:in:compatibleWith:)", message: "Not available in Swift")
  class func imageNamed(_ name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> UIImage?
  @available(*, unavailable, message: "superseded by import of -[UIImage initWithContentsOfFile:]")
  /*not inherited*/ init?(contentsOfFile path: String)
  @available(*, unavailable, renamed: "init(contentsOfFile:)", message: "Not available in Swift")
  class func imageWithContentsOfFile(_ path: String) -> UIImage?
  @available(*, unavailable, message: "superseded by import of -[UIImage initWithData:]")
  /*not inherited*/ init?(data: Data)
  @available(*, unavailable, renamed: "init(data:)", message: "Not available in Swift")
  class func imageWithData(_ data: Data) -> UIImage?
  @available(iOS 6.0, *)
  @available(*, unavailable, message: "superseded by import of -[UIImage initWithData:scale:]")
  /*not inherited*/ init?(data: Data, scale: CGFloat)
  @available(iOS 6.0, *)
  @available(*, unavailable, renamed: "init(data:scale:)", message: "Not available in Swift")
  class func imageWithData(_ data: Data, scale: CGFloat) -> UIImage?
  @available(*, unavailable, message: "superseded by import of -[UIImage initWithCGImage:]")
  /*not inherited*/ init(cgImage: CGImage)
  @available(swift, obsoleted: 3, renamed: "init(cgImage:)")
  /*not inherited*/ init(CGImage cgImage: CGImage)
  @available(*, unavailable, renamed: "init(cgImage:)", message: "Not available in Swift")
  class func imageWithCGImage(_ cgImage: CGImage) -> UIImage
  @available(iOS 4.0, *)
  @available(*, unavailable, message: "superseded by import of -[UIImage initWithCGImage:scale:orientation:]")
  /*not inherited*/ init(cgImage: CGImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "init(cgImage:scale:orientation:)")
  /*not inherited*/ init(CGImage cgImage: CGImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(iOS 4.0, *)
  @available(*, unavailable, renamed: "init(cgImage:scale:orientation:)", message: "Not available in Swift")
  class func imageWithCGImage(_ cgImage: CGImage, scale: CGFloat, orientation: UIImage.Orientation) -> UIImage
  @available(iOS 5.0, *)
  @available(*, unavailable, message: "superseded by import of -[UIImage initWithCIImage:]")
  /*not inherited*/ init(ciImage: CIImage)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "init(ciImage:)")
  /*not inherited*/ init(CIImage ciImage: CIImage)
  @available(iOS 5.0, *)
  @available(*, unavailable, renamed: "init(ciImage:)", message: "Not available in Swift")
  class func imageWithCIImage(_ ciImage: CIImage) -> UIImage
  @available(iOS 6.0, *)
  @available(*, unavailable, message: "superseded by import of -[UIImage initWithCIImage:scale:orientation:]")
  /*not inherited*/ init(ciImage: CIImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "init(ciImage:scale:orientation:)")
  /*not inherited*/ init(CIImage ciImage: CIImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(iOS 6.0, *)
  @available(*, unavailable, renamed: "init(ciImage:scale:orientation:)", message: "Not available in Swift")
  class func imageWithCIImage(_ ciImage: CIImage, scale: CGFloat, orientation: UIImage.Orientation) -> UIImage
  init?(contentsOfFile path: String)
  init?(data: Data)
  @available(iOS 6.0, *)
  init?(data: Data, scale: CGFloat)
  init(cgImage: CGImage)
  @available(swift, obsoleted: 3, renamed: "init(cgImage:)")
  init(CGImage cgImage: CGImage)
  @available(iOS 4.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "init(cgImage:scale:orientation:)")
  init(CGImage cgImage: CGImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(iOS 5.0, *)
  init(ciImage: CIImage)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "init(ciImage:)")
  init(CIImage ciImage: CIImage)
  @available(iOS 6.0, *)
  init(ciImage: CIImage, scale: CGFloat, orientation: UIImage.Orientation)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "init(ciImage:scale:orientation:)")
  init(CIImage ciImage: CIImage, scale: CGFloat, orientation: UIImage.Orientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  @available(swift, obsoleted: 3, renamed: "cgImage")
  var CGImage: CGImage? { get }
  @available(iOS 5.0, *)
  var ciImage: CIImage? { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "ciImage")
  var CIImage: CIImage? { get }
  var imageOrientation: UIImage.Orientation { get }
  @available(iOS 4.0, *)
  var scale: CGFloat { get }
  @available(iOS 13.0, *)
  var isSymbolImage: Bool { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "isSymbolImage")
  var symbolImage: Bool { get }
  @available(iOS 5.0, *)
  class func animatedImageNamed(_ name: String, duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets: UIEdgeInsets, duration: TimeInterval) -> UIImage?
  @available(iOS 6.0, *)
  class func animatedResizableImageNamed(_ name: String, capInsets: UIEdgeInsets, resizingMode: UIImage.ResizingMode, duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  class func animatedImage(with images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "animatedImage(with:duration:)")
  class func animatedImageWithImages(_ images: [UIImage], duration: TimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  var images: [UIImage]? { get }
  @available(iOS 5.0, *)
  var duration: TimeInterval { get }
  func draw(at point: CGPoint)
  @available(swift, obsoleted: 3, renamed: "draw(at:)")
  func drawAtPoint(_ point: CGPoint)
  func draw(at point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  @available(swift, obsoleted: 3, renamed: "draw(at:blendMode:alpha:)")
  func drawAtPoint(_ point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func draw(in rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "draw(in:)")
  func drawInRect(_ rect: CGRect)
  func draw(in rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  @available(swift, obsoleted: 3, renamed: "draw(in:blendMode:alpha:)")
  func drawInRect(_ rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPattern(in rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawAsPattern(in:)")
  func drawAsPatternInRect(_ rect: CGRect)
  @available(iOS 5.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets) -> UIImage
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "resizableImage(withCapInsets:)")
  func resizableImageWithCapInsets(_ capInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  func resizableImage(withCapInsets capInsets: UIEdgeInsets, resizingMode: UIImage.ResizingMode) -> UIImage
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "resizableImage(withCapInsets:resizingMode:)")
  func resizableImageWithCapInsets(_ capInsets: UIEdgeInsets, resizingMode: UIImage.ResizingMode) -> UIImage
  @available(iOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(iOS 6.0, *)
  var resizingMode: UIImage.ResizingMode { get }
  @available(iOS 6.0, *)
  func withAlignmentRectInsets(_ alignmentInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "withAlignmentRectInsets(_:)")
  func imageWithAlignmentRectInsets(_ alignmentInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(iOS 7.0, *)
  func withRenderingMode(_ renderingMode: UIImage.RenderingMode) -> UIImage
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "withRenderingMode(_:)")
  func imageWithRenderingMode(_ renderingMode: UIImage.RenderingMode) -> UIImage
  @available(iOS 7.0, *)
  var renderingMode: UIImage.RenderingMode { get }
  @available(iOS 10.0, *)
  var imageRendererFormat: UIGraphicsImageRendererFormat { get }
  @available(iOS 8.0, *)
  @NSCopying var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  var imageAsset: UIImageAsset? { get }
  @available(iOS 9.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(iOS 9.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  @available(iOS 10.0, *)
  func withHorizontallyFlippedOrientation() -> UIImage
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "withHorizontallyFlippedOrientation()")
  func imageWithHorizontallyFlippedOrientation() -> UIImage
  @available(iOS 13.0, *)
  var __baselineOffsetFromBottom: CGFloat { get }
  @available(iOS 13.0, *)
  var __hasBaseline: Bool { get }
  @available(iOS 13.0, *)
  func withBaselineOffset(fromBottom baselineOffset: CGFloat) -> UIImage
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "withBaselineOffset(fromBottom:)")
  func imageWithBaselineOffsetFromBottom(_ baselineOffset: CGFloat) -> UIImage
  @available(iOS 13.0, *)
  func imageWithoutBaseline() -> UIImage
  @available(iOS 13.0, *)
  @NSCopying var configuration: UIImage.Configuration? { get }
  @available(iOS 13.0, *)
  func withConfiguration(_ configuration: UIImage.Configuration) -> UIImage
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "withConfiguration(_:)")
  func imageWithConfiguration(_ configuration: UIImage.Configuration) -> UIImage
  @available(iOS 13.0, *)
  @NSCopying var symbolConfiguration: UIImage.SymbolConfiguration? { get }
  @available(iOS 13.0, *)
  func applyingSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration) -> UIImage?
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "applyingSymbolConfiguration(_:)")
  func imageByApplyingSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration) -> UIImage?
  @available(iOS 13.0, *)
  func withTintColor(_ color: UIColor) -> UIImage
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "withTintColor(_:)")
  func imageWithTintColor(_ color: UIColor) -> UIImage
  @available(iOS 13.0, *)
  func withTintColor(_ color: UIColor, renderingMode: UIImage.RenderingMode) -> UIImage
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "withTintColor(_:renderingMode:)")
  func imageWithTintColor(_ color: UIColor, renderingMode: UIImage.RenderingMode) -> UIImage
  init()
  @available(iOS 2.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 2.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}

extension UIImage : _ExpressibleByImageLiteral {
  required convenience init(imageLiteralResourceName name: String)
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension UIImage {
  var baselineOffsetFromBottom: CGFloat? { get }
}
extension UIImage {
  @available(iOS 13.0, *)
  class var actions: UIImage { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "actions")
  class var actionsImage: UIImage { get }
  @available(iOS 13.0, *)
  class var add: UIImage { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "add")
  class var addImage: UIImage { get }
  @available(iOS 13.0, *)
  class var remove: UIImage { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "remove")
  class var removeImage: UIImage { get }
  @available(iOS 13.0, *)
  class var checkmark: UIImage { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "checkmark")
  class var checkmarkImage: UIImage { get }
  @available(iOS 13.0, *)
  class var strokedCheckmark: UIImage { get }
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "strokedCheckmark")
  class var strokedCheckmarkImage: UIImage { get }
}
extension UIImage : NSItemProviderReading, NSItemProviderWriting, UIItemProviderPresentationSizeProviding {
  @available(iOS 11.0, *)
  class var readableTypeIdentifiersForItemProvider: [String] { get }
  @available(iOS 11.0, *)
  class var writableTypeIdentifiersForItemProvider: [String] { get }
  @available(iOS 11.0, *)
  var writableTypeIdentifiersForItemProvider: [String] { get }
  @available(iOS 11.0, *)
  var preferredPresentationSizeForItemProvider: CGSize { get }
  @available(iOS 11.0, *)
  class func object(withItemProviderData data: Data, typeIdentifier: String) throws -> Self
  @available(iOS 11.0, *)
  class func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  @available(iOS 11.0, *)
  func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  @available(iOS 11.0, *)
  func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress?
}
extension NSTextAttachment {
  @available(iOS 13.0, *)
  /*not inherited*/ init(image: UIImage)
  @available(iOS 13.0, *)
  @available(*, unavailable, renamed: "init(image:)", message: "Not available in Swift")
  class func textAttachmentWithImage(_ image: UIImage) -> NSTextAttachment
}
extension UIImage {
  func stretchableImage(withLeftCapWidth leftCapWidth: Int, topCapHeight: Int) -> UIImage
  @available(swift, obsoleted: 3, renamed: "stretchableImage(withLeftCapWidth:topCapHeight:)")
  func stretchableImageWithLeftCapWidth(_ leftCapWidth: Int, topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}
extension CIImage {
  @available(iOS 5.0, *)
  init?(image: UIImage)
  @available(iOS 5.0, *)
  init?(image: UIImage, options: [CIImageOption : Any]? = nil)
}
@available(swift, obsoleted: 3, renamed: "UIImage.pngData(self:)")
func UIImagePNGRepresentation(_ image: UIImage) -> Data?
@available(swift, obsoleted: 3, renamed: "UIImage.jpegData(self:compressionQuality:)")
func UIImageJPEGRepresentation(_ image: UIImage, _ compressionQuality: CGFloat) -> Data?
