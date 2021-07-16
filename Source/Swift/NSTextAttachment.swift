@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "NSTextAttachment.character")
var NSAttachmentCharacter: Int { get }
extension NSTextAttachment {
  @available(iOS 7.0, *)
  class var character: Int { get }
}
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(iOS 7.0, *)
  func image(forBounds imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "image(forBounds:textContainer:characterIndex:)")
  func imageForBounds(_ imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(iOS 7.0, *)
  func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "attachmentBounds(for:proposedLineFragment:glyphPosition:characterIndex:)")
  func attachmentBoundsForTextContainer(_ textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
@available(iOS 7.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSSecureCoding {

  /**************************** Initialization ****************************/
  @available(iOS 7.0, *)
  init(data contentData: Data?, ofType uti: String?)

  /**************************** Content properties ****************************/
  @available(iOS 7.0, *)
  var contents: Data?
  @available(iOS 7.0, *)
  var fileType: String?

  /**************************** Rendering/layout properties ****************************/
  @available(iOS 7.0, *)
  var image: UIImage?
  @available(iOS 7.0, *)
  var bounds: CGRect

  /**************************** Non-image contents properties ****************************/
  var fileWrapper: FileWrapper?
  convenience init()
  @available(iOS 7.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 7.0, *)
  func image(forBounds imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(iOS 7.0, *)
  func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 7.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
extension NSAttributedString {
  @available(iOS 7.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
  @available(iOS 7.0, *)
  @available(*, unavailable, renamed: "init(attachment:)", message: "Not available in Swift")
  class func attributedStringWithAttachment(_ attachment: NSTextAttachment) -> NSAttributedString
}
