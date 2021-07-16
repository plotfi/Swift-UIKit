@_exported import Foundation

var __NSPARAGRAPH_STYLE_SHARED_SECTION__: Int32 { get }
@available(iOS 6.0, *)
enum NSLineBreakMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case byWordWrapping
  @available(swift, obsoleted: 3, renamed: "byWordWrapping")
  static var ByWordWrapping: NSLineBreakMode { get }
  case byCharWrapping
  @available(swift, obsoleted: 3, renamed: "byCharWrapping")
  static var ByCharWrapping: NSLineBreakMode { get }
  case byClipping
  @available(swift, obsoleted: 3, renamed: "byClipping")
  static var ByClipping: NSLineBreakMode { get }
  case byTruncatingHead
  @available(swift, obsoleted: 3, renamed: "byTruncatingHead")
  static var ByTruncatingHead: NSLineBreakMode { get }
  case byTruncatingTail
  @available(swift, obsoleted: 3, renamed: "byTruncatingTail")
  static var ByTruncatingTail: NSLineBreakMode { get }
  case byTruncatingMiddle
  @available(swift, obsoleted: 3, renamed: "byTruncatingMiddle")
  static var ByTruncatingMiddle: NSLineBreakMode { get }
}
@available(swift, obsoleted: 3, renamed: "NSParagraphStyle.LineBreakStrategy")
typealias NSLineBreakStrategy = NSParagraphStyle.LineBreakStrategy
extension NSParagraphStyle {
  struct LineBreakStrategy : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = NSParagraphStyle.LineBreakStrategy
    typealias ArrayLiteralElement = NSParagraphStyle.LineBreakStrategy
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var none: NSParagraphStyle.LineBreakStrategy { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: NSParagraphStyle.LineBreakStrategy { get }
    @available(iOS 9.0, *)
    static var pushOut: NSParagraphStyle.LineBreakStrategy { get }
    @available(iOS 9.0, *)
    @available(swift, obsoleted: 3, renamed: "pushOut")
    static var PushOut: NSParagraphStyle.LineBreakStrategy { get }
    @available(iOS 14.0, *)
    static var hangulWordPriority: NSParagraphStyle.LineBreakStrategy { get }
    @available(iOS 14.0, *)
    @available(swift, obsoleted: 3, renamed: "hangulWordPriority")
    static var HangulWordPriority: NSParagraphStyle.LineBreakStrategy { get }
    @available(iOS 14.0, *)
    static var standard: NSParagraphStyle.LineBreakStrategy { get }
    @available(iOS 14.0, *)
    @available(swift, obsoleted: 3, renamed: "standard")
    static var Standard: NSParagraphStyle.LineBreakStrategy { get }
  }
}
@available(swift, obsoleted: 3, renamed: "NSTextTab.OptionKey")
typealias NSTextTabOptionKey = NSTextTab.OptionKey
extension NSTextTab {
  struct OptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "NSTextTab.OptionKey.columnTerminators")
let NSTabColumnTerminatorsAttributeName: NSTextTab.OptionKey
extension NSTextTab.OptionKey {
  @available(iOS 7.0, *)
  static let columnTerminators: NSTextTab.OptionKey
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "NSTextTab.OptionKey.columnTerminators")
  static let NSTabColumnTerminatorsAttributeName: NSTextTab.OptionKey
}
@available(iOS 7.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding, NSSecureCoding {
  @available(iOS 7.0, *)
  class func columnTerminators(for aLocale: Locale?) -> CharacterSet
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "columnTerminators(for:)")
  class func columnTerminatorsForLocale(_ aLocale: Locale?) -> CharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [NSTextTab.OptionKey : Any] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [NSTextTab.OptionKey : Any] { get }
  convenience init()
  @available(iOS 7.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 7.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 7.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
@available(iOS 6.0, *)
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @NSCopying class var `default`: NSParagraphStyle { get }
  @available(swift, obsoleted: 3, renamed: "default")
  @NSCopying class var defaultParagraphStyle: NSParagraphStyle { get }
  class func defaultWritingDirection(forLanguage languageName: String?) -> NSWritingDirection
  @available(swift, obsoleted: 3, renamed: "defaultWritingDirection(forLanguage:)")
  class func defaultWritingDirectionForLanguage(_ languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(iOS 7.0, *)
  var tabStops: [NSTextTab] { get }
  @available(iOS 7.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  @available(iOS 9.0, *)
  var lineBreakStrategy: NSParagraphStyle.LineBreakStrategy { get }
  init()
  @available(iOS 6.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 6.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 6.0, *)
  func mutableCopy(with zone: NSZone? = nil) -> Any
  @available(iOS 6.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
@available(iOS 6.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  @available(iOS 7.0, *)
  var tabStops: [NSTextTab]!
  @available(iOS 7.0, *)
  var defaultTabInterval: CGFloat
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(iOS 9.0, *)
  var lineBreakStrategy: NSParagraphStyle.LineBreakStrategy
  @available(iOS 9.0, *)
  func addTabStop(_ anObject: NSTextTab)
  @available(iOS 9.0, *)
  func removeTabStop(_ anObject: NSTextTab)
  @available(iOS 9.0, *)
  func setParagraphStyle(_ obj: NSParagraphStyle)
  init()
  init?(coder: NSCoder)
}
