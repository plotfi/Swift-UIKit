@_exported import Foundation

var __NSLAYOUT_MANAGER_SHARED_SECTION__: Int32 { get }
@available(iOS 7.0, *)
@available(swift, obsoleted: 4, renamed: "NSLayoutManager.TextLayoutOrientation")
typealias NSTextLayoutOrientation = NSLayoutManager.TextLayoutOrientation
extension NSLayoutManager {
  @available(iOS 7.0, *)
  enum TextLayoutOrientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case horizontal
    @available(swift, obsoleted: 3, renamed: "horizontal")
    static var Horizontal: NSLayoutManager.TextLayoutOrientation { get }
    case vertical
    @available(swift, obsoleted: 3, renamed: "vertical")
    static var Vertical: NSLayoutManager.TextLayoutOrientation { get }
  }
  @available(iOS 7.0, *)
  struct GlyphProperty : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    typealias RawValue = Int
    typealias Element = NSLayoutManager.GlyphProperty
    typealias ArrayLiteralElement = NSLayoutManager.GlyphProperty
    static var null: NSLayoutManager.GlyphProperty { get }
    @available(swift, obsoleted: 3, renamed: "null")
    static var Null: NSLayoutManager.GlyphProperty { get }
    static var controlCharacter: NSLayoutManager.GlyphProperty { get }
    @available(swift, obsoleted: 3, renamed: "controlCharacter")
    static var ControlCharacter: NSLayoutManager.GlyphProperty { get }
    static var elastic: NSLayoutManager.GlyphProperty { get }
    @available(swift, obsoleted: 3, renamed: "elastic")
    static var Elastic: NSLayoutManager.GlyphProperty { get }
    static var nonBaseCharacter: NSLayoutManager.GlyphProperty { get }
    @available(swift, obsoleted: 3, renamed: "nonBaseCharacter")
    static var NonBaseCharacter: NSLayoutManager.GlyphProperty { get }
  }
  @available(iOS 7.0, *)
  struct ControlCharacterAction : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    typealias RawValue = Int
    typealias Element = NSLayoutManager.ControlCharacterAction
    typealias ArrayLiteralElement = NSLayoutManager.ControlCharacterAction
    static var zeroAdvancement: NSLayoutManager.ControlCharacterAction { get }
    @available(swift, obsoleted: 3, renamed: "zeroAdvancement")
    static var ZeroAdvancement: NSLayoutManager.ControlCharacterAction { get }
    static var whitespace: NSLayoutManager.ControlCharacterAction { get }
    @available(swift, obsoleted: 3, renamed: "whitespace")
    static var Whitespace: NSLayoutManager.ControlCharacterAction { get }
    static var horizontalTab: NSLayoutManager.ControlCharacterAction { get }
    @available(swift, obsoleted: 3, renamed: "horizontalTab")
    static var HorizontalTab: NSLayoutManager.ControlCharacterAction { get }
    static var lineBreak: NSLayoutManager.ControlCharacterAction { get }
    @available(swift, obsoleted: 3, renamed: "lineBreak")
    static var LineBreak: NSLayoutManager.ControlCharacterAction { get }
    static var paragraphBreak: NSLayoutManager.ControlCharacterAction { get }
    @available(swift, obsoleted: 3, renamed: "paragraphBreak")
    static var ParagraphBreak: NSLayoutManager.ControlCharacterAction { get }
    static var containerBreak: NSLayoutManager.ControlCharacterAction { get }
    @available(swift, obsoleted: 3, renamed: "containerBreak")
    static var ContainerBreak: NSLayoutManager.ControlCharacterAction { get }
  }
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 4, renamed: "NSLayoutManager.GlyphProperty")
typealias NSGlyphProperty = NSLayoutManager.GlyphProperty
@available(iOS 7.0, *)
@available(swift, obsoleted: 4, renamed: "NSLayoutManager.ControlCharacterAction")
typealias NSControlCharacterAction = NSLayoutManager.ControlCharacterAction
protocol NSTextLayoutOrientationProvider {
  @available(iOS 7.0, *)
  var layoutOrientation: NSLayoutManager.TextLayoutOrientation { get }
}
@available(iOS 7.0, *)
class NSLayoutManager : NSObject, NSSecureCoding {

  /**************************** Initialization ****************************/
  init()
  init?(coder: NSCoder)

  /*************************** Text storage ***************************/
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?

  /**************************** Text containers ****************************/
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(_ container: NSTextContainer)
  func insertTextContainer(_ container: NSTextContainer, at index: Int)
  @available(swift, obsoleted: 3, renamed: "insertTextContainer(_:at:)")
  func insertTextContainer(_ container: NSTextContainer, atIndex index: Int)
  func removeTextContainer(at index: Int)
  @available(swift, obsoleted: 3, renamed: "removeTextContainer(at:)")
  func removeTextContainerAtIndex(_ index: Int)
  func textContainerChangedGeometry(_ container: NSTextContainer)

  /**************************** Delegate ****************************/
  weak var delegate: @sil_weak NSLayoutManagerDelegate?

  /*********************** Global layout manager options ***********************/
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var usesFontLeading: Bool
  @available(iOS 7.0, *)
  var allowsNonContiguousLayout: Bool
  @available(iOS 7.0, *)
  var hasNonContiguousLayout: Bool { get }
  @available(iOS 12.0, *)
  var limitsLayoutForSuspiciousContents: Bool
  @available(iOS 13.0, *)
  var usesDefaultHyphenation: Bool

  /************************** Invalidation **************************/
  func invalidateGlyphs(forCharacterRange charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer?)

  /************************** Invalidation **************************/
  @available(swift, obsoleted: 3, renamed: "invalidateGlyphs(forCharacterRange:changeInLength:actualCharacterRange:)")
  func invalidateGlyphsForCharacterRange(_ charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer?)
  @available(iOS 7.0, *)
  func invalidateLayout(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "invalidateLayout(forCharacterRange:actualCharacterRange:)")
  func invalidateLayoutForCharacterRange(_ charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?)
  func invalidateDisplay(forCharacterRange charRange: NSRange)
  @available(swift, obsoleted: 3, renamed: "invalidateDisplay(forCharacterRange:)")
  func invalidateDisplayForCharacterRange(_ charRange: NSRange)
  func invalidateDisplay(forGlyphRange glyphRange: NSRange)
  @available(swift, obsoleted: 3, renamed: "invalidateDisplay(forGlyphRange:)")
  func invalidateDisplayForGlyphRange(_ glyphRange: NSRange)
  @available(iOS 7.0, *)
  func processEditing(for textStorage: NSTextStorage, edited editMask: NSTextStorage.EditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "processEditing(for:edited:range:changeInLength:invalidatedRange:)")
  func processEditingForTextStorage(_ textStorage: NSTextStorage, edited editMask: NSTextStorage.EditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)

  /************************ Causing glyph generation and layout ************************/
  func ensureGlyphs(forCharacterRange charRange: NSRange)

  /************************ Causing glyph generation and layout ************************/
  @available(swift, obsoleted: 3, renamed: "ensureGlyphs(forCharacterRange:)")
  func ensureGlyphsForCharacterRange(_ charRange: NSRange)
  func ensureGlyphs(forGlyphRange glyphRange: NSRange)
  @available(swift, obsoleted: 3, renamed: "ensureGlyphs(forGlyphRange:)")
  func ensureGlyphsForGlyphRange(_ glyphRange: NSRange)
  func ensureLayout(forCharacterRange charRange: NSRange)
  @available(swift, obsoleted: 3, renamed: "ensureLayout(forCharacterRange:)")
  func ensureLayoutForCharacterRange(_ charRange: NSRange)
  func ensureLayout(forGlyphRange glyphRange: NSRange)
  @available(swift, obsoleted: 3, renamed: "ensureLayout(forGlyphRange:)")
  func ensureLayoutForGlyphRange(_ glyphRange: NSRange)
  func ensureLayout(for container: NSTextContainer)
  @available(swift, obsoleted: 3, renamed: "ensureLayout(for:)")
  func ensureLayoutForTextContainer(_ container: NSTextContainer)
  func ensureLayout(forBoundingRect bounds: CGRect, in container: NSTextContainer)
  @available(swift, obsoleted: 3, renamed: "ensureLayout(forBoundingRect:in:)")
  func ensureLayoutForBoundingRect(_ bounds: CGRect, inTextContainer container: NSTextContainer)

  /************************ Set glyphs and glyph properties ************************/
  @available(iOS 7.0, *)
  func setGlyphs(_ glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)

  /************************ Get glyphs and glyph properties ************************/
  var numberOfGlyphs: Int { get }
  @available(iOS 7.0, *)
  func cgGlyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "cgGlyph(at:isValidIndex:)")
  func CGGlyphAtIndex(_ glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph
  @available(iOS 7.0, *)
  func cgGlyph(at glyphIndex: Int) -> CGGlyph
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "cgGlyph(at:)")
  func CGGlyphAtIndex(_ glyphIndex: Int) -> CGGlyph
  @available(iOS 7.0, *)
  func isValidGlyphIndex(_ glyphIndex: Int) -> Bool
  @available(iOS 7.0, *)
  func propertyForGlyph(at glyphIndex: Int) -> NSLayoutManager.GlyphProperty
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "propertyForGlyph(at:)")
  func propertyForGlyphAtIndex(_ glyphIndex: Int) -> NSLayoutManager.GlyphProperty
  func characterIndexForGlyph(at glyphIndex: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "characterIndexForGlyph(at:)")
  func characterIndexForGlyphAtIndex(_ glyphIndex: Int) -> Int
  func glyphIndexForCharacter(at charIndex: Int) -> Int
  @available(swift, obsoleted: 3, renamed: "glyphIndexForCharacter(at:)")
  func glyphIndexForCharacterAtIndex(_ charIndex: Int) -> Int
  @available(iOS 7.0, *)
  func getGlyphs(in glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>?, properties props: UnsafeMutablePointer<NSLayoutManager.GlyphProperty>?, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>?, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>?) -> Int
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "getGlyphs(in:glyphs:properties:characterIndexes:bidiLevels:)")
  func getGlyphsInRange(_ glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>?, properties props: UnsafeMutablePointer<NSLayoutManager.GlyphProperty>?, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>?, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>?) -> Int
  func setTextContainer(_ container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(_ fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect: CGRect)
  func setExtraLineFragmentRect(_ fragmentRect: CGRect, usedRect: CGRect, textContainer container: NSTextContainer)
  func setLocation(_ location: CGPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(_ flag: Bool, forGlyphAt glyphIndex: Int)
  @available(swift, obsoleted: 3, renamed: "setNotShownAttribute(_:forGlyphAt:)")
  func setNotShownAttribute(_ flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphAt glyphIndex: Int)
  @available(swift, obsoleted: 3, renamed: "setDrawsOutsideLineFragment(_:forGlyphAt:)")
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setAttachmentSize(_ attachmentSize: CGSize, forGlyphRange glyphRange: NSRange)

  /************************ Get layout information ************************/
  func getFirstUnlaidCharacterIndex(_ charIndex: UnsafeMutablePointer<Int>?, glyphIndex: UnsafeMutablePointer<Int>?)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainer(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSTextContainer?
  @available(swift, obsoleted: 3, renamed: "textContainer(forGlyphAt:effectiveRange:)")
  func textContainerForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSTextContainer?
  @available(iOS 9.0, *)
  func textContainer(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "textContainer(forGlyphAt:effectiveRange:withoutAdditionalLayout:)")
  func textContainerForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRect(for container: NSTextContainer) -> CGRect
  @available(swift, obsoleted: 3, renamed: "usedRect(for:)")
  func usedRectForTextContainer(_ container: NSTextContainer) -> CGRect
  func lineFragmentRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> CGRect
  @available(swift, obsoleted: 3, renamed: "lineFragmentRect(forGlyphAt:effectiveRange:)")
  func lineFragmentRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> CGRect
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "lineFragmentRect(forGlyphAt:effectiveRange:withoutAdditionalLayout:)")
  func lineFragmentRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> CGRect
  func lineFragmentUsedRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> CGRect
  @available(swift, obsoleted: 3, renamed: "lineFragmentUsedRect(forGlyphAt:effectiveRange:)")
  func lineFragmentUsedRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentUsedRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> CGRect
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "lineFragmentUsedRect(forGlyphAt:effectiveRange:withoutAdditionalLayout:)")
  func lineFragmentUsedRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> CGRect
  var extraLineFragmentRect: CGRect { get }
  var extraLineFragmentUsedRect: CGRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func location(forGlyphAt glyphIndex: Int) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "location(forGlyphAt:)")
  func locationForGlyphAtIndex(_ glyphIndex: Int) -> CGPoint
  func notShownAttribute(forGlyphAt glyphIndex: Int) -> Bool
  @available(swift, obsoleted: 3, renamed: "notShownAttribute(forGlyphAt:)")
  func notShownAttributeForGlyphAtIndex(_ glyphIndex: Int) -> Bool
  func drawsOutsideLineFragment(forGlyphAt glyphIndex: Int) -> Bool
  @available(swift, obsoleted: 3, renamed: "drawsOutsideLineFragment(forGlyphAt:)")
  func drawsOutsideLineFragmentForGlyphAtIndex(_ glyphIndex: Int) -> Bool
  func attachmentSize(forGlyphAt glyphIndex: Int) -> CGSize
  @available(swift, obsoleted: 3, renamed: "attachmentSize(forGlyphAt:)")
  func attachmentSizeForGlyphAtIndex(_ glyphIndex: Int) -> CGSize
  @available(iOS 7.0, *)
  func truncatedGlyphRange(inLineFragmentForGlyphAt glyphIndex: Int) -> NSRange
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "truncatedGlyphRange(inLineFragmentForGlyphAt:)")
  func truncatedGlyphRangeInLineFragmentForGlyphAtIndex(_ glyphIndex: Int) -> NSRange

  /************************ More sophisticated queries ************************/
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?) -> NSRange

  /************************ More sophisticated queries ************************/
  @available(swift, obsoleted: 3, renamed: "glyphRange(forCharacterRange:actualCharacterRange:)")
  func glyphRangeForCharacterRange(_ charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?) -> NSRange
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange: NSRangePointer?) -> NSRange
  @available(swift, obsoleted: 3, renamed: "characterRange(forGlyphRange:actualGlyphRange:)")
  func characterRangeForGlyphRange(_ glyphRange: NSRange, actualGlyphRange: NSRangePointer?) -> NSRange
  func glyphRange(for container: NSTextContainer) -> NSRange
  @available(swift, obsoleted: 3, renamed: "glyphRange(for:)")
  func glyphRangeForTextContainer(_ container: NSTextContainer) -> NSRange
  func range(ofNominallySpacedGlyphsContaining glyphIndex: Int) -> NSRange
  @available(swift, obsoleted: 3, renamed: "range(ofNominallySpacedGlyphsContaining:)")
  func rangeOfNominallySpacedGlyphsContainingIndex(_ glyphIndex: Int) -> NSRange
  func boundingRect(forGlyphRange glyphRange: NSRange, in container: NSTextContainer) -> CGRect
  @available(swift, obsoleted: 3, renamed: "boundingRect(forGlyphRange:in:)")
  func boundingRectForGlyphRange(_ glyphRange: NSRange, inTextContainer container: NSTextContainer) -> CGRect
  func glyphRange(forBoundingRect bounds: CGRect, in container: NSTextContainer) -> NSRange
  @available(swift, obsoleted: 3, renamed: "glyphRange(forBoundingRect:in:)")
  func glyphRangeForBoundingRect(_ bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphRange(forBoundingRectWithoutAdditionalLayout bounds: CGRect, in container: NSTextContainer) -> NSRange
  @available(swift, obsoleted: 3, renamed: "glyphRange(forBoundingRectWithoutAdditionalLayout:in:)")
  func glyphRangeForBoundingRectWithoutAdditionalLayout(_ bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphIndex(for point: CGPoint, in container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  @available(swift, obsoleted: 3, renamed: "glyphIndex(for:in:fractionOfDistanceThroughGlyph:)")
  func glyphIndexForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  func glyphIndex(for point: CGPoint, in container: NSTextContainer) -> Int
  @available(swift, obsoleted: 3, renamed: "glyphIndex(for:in:)")
  func glyphIndexForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyph(for point: CGPoint, in container: NSTextContainer) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "fractionOfDistanceThroughGlyph(for:in:)")
  func fractionOfDistanceThroughGlyphForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer) -> CGFloat
  func characterIndex(for point: CGPoint, in container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  @available(swift, obsoleted: 3, renamed: "characterIndex(for:in:fractionOfDistanceBetweenInsertionPoints:)")
  func characterIndexForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  func getLineFragmentInsertionPoints(forCharacterAt charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>?, characterIndexes charIndexes: UnsafeMutablePointer<Int>?) -> Int
  @available(swift, obsoleted: 3, renamed: "getLineFragmentInsertionPoints(forCharacterAt:alternatePositions:inDisplayOrder:positions:characterIndexes:)")
  func getLineFragmentInsertionPointsForCharacterAtIndex(_ charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>?, characterIndexes charIndexes: UnsafeMutablePointer<Int>?) -> Int
  @available(iOS 7.0, *)
  func enumerateLineFragments(forGlyphRange glyphRange: NSRange, using block: @escaping (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "enumerateLineFragments(forGlyphRange:using:)")
  func enumerateLineFragmentsForGlyphRange(_ glyphRange: NSRange, usingBlock block: @escaping (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  func enumerateEnclosingRects(forGlyphRange glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, in textContainer: NSTextContainer, using block: @escaping (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "enumerateEnclosingRects(forGlyphRange:withinSelectedGlyphRange:in:using:)")
  func enumerateEnclosingRectsForGlyphRange(_ glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, inTextContainer textContainer: NSTextContainer, usingBlock block: @escaping (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)

  /************************ Drawing support ************************/
  func drawBackground(forGlyphRange glyphsToShow: NSRange, at origin: CGPoint)

  /************************ Drawing support ************************/
  @available(swift, obsoleted: 3, renamed: "drawBackground(forGlyphRange:at:)")
  func drawBackgroundForGlyphRange(_ glyphsToShow: NSRange, atPoint origin: CGPoint)
  func drawGlyphs(forGlyphRange glyphsToShow: NSRange, at origin: CGPoint)
  @available(swift, obsoleted: 3, renamed: "drawGlyphs(forGlyphRange:at:)")
  func drawGlyphsForGlyphRange(_ glyphsToShow: NSRange, atPoint origin: CGPoint)
  @available(iOS 13.0, *)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key : Any] = [:], in CGContext: CGContext)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "showCGGlyphs(_:positions:count:font:textMatrix:attributes:in:)")
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key : Any] = [:], inContext CGContext: CGContext)
  @available(iOS 7.0, *)
  func fillBackgroundRectArray(_ rectArray: UnsafePointer<CGRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: UIColor)
  func drawUnderline(forGlyphRange glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  @available(swift, obsoleted: 3, renamed: "drawUnderline(forGlyphRange:underlineType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:)")
  func drawUnderlineForGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func underlineGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func drawStrikethrough(forGlyphRange glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  @available(swift, obsoleted: 3, renamed: "drawStrikethrough(forGlyphRange:strikethroughType:baselineOffset:lineFragmentRect:lineFragmentGlyphRange:containerOrigin:)")
  func drawStrikethroughForGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func strikethroughGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  @available(iOS 7.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 7.0, *)
  func encode(with coder: NSCoder)
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {

  /************************ Glyph generation ************************/
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int

  /************************ Line layout ************************/
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, lineSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat

  /************************ Line layout ************************/
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:lineSpacingAfterGlyphAt:withProposedLineFragmentRect:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, lineSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:paragraphSpacingBeforeGlyphAt:withProposedLineFragmentRect:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:paragraphSpacingAfterGlyphAt:withProposedLineFragmentRect:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUse action: NSLayoutManager.ControlCharacterAction, forControlCharacterAt charIndex: Int) -> NSLayoutManager.ControlCharacterAction
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:shouldUse:forControlCharacterAt:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUseAction action: NSLayoutManager.ControlCharacterAction, forControlCharacterAtIndex charIndex: Int) -> NSLayoutManager.ControlCharacterAction
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAt charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:shouldBreakLineByWordBeforeCharacterAt:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAt charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:shouldBreakLineByHyphenatingBeforeCharacterAt:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, boundingBoxForControlGlyphAt glyphIndex: Int, for textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:boundingBoxForControlGlyphAt:for:proposedLineFragment:glyphPosition:characterIndex:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, boundingBoxForControlGlyphAtIndex glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 9.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, in textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:shouldSetLineFragmentRect:lineFragmentUsedRect:baselineOffset:in:forGlyphRange:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, inTextContainer textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool

  /************************ Layout processing ************************/
  @available(iOS 7.0, *)
  optional func layoutManagerDidInvalidateLayout(_ sender: NSLayoutManager)
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:didCompleteLayoutFor:atEnd:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, didCompleteLayoutForTextContainer textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFrom oldSize: CGSize)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutManager(_:textContainer:didChangeGeometryFrom:)")
  optional func layoutManager(_ layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFromSize oldSize: CGSize)
}
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionZeroAdvancement instead")
var NSControlCharacterZeroAdvancementAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionWhitespace instead")
var NSControlCharacterWhitespaceAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionHorizontalTab instead")
var NSControlCharacterHorizontalTabAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionLineBreak instead")
var NSControlCharacterLineBreakAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionParagraphBreak instead")
var NSControlCharacterParagraphBreakAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionContainerBreak instead")
var NSControlCharacterContainerBreakAction: Int { get }
extension NSLayoutManager {
  func glyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph
  @available(swift, obsoleted: 3, renamed: "glyph(at:isValidIndex:)")
  func glyphAtIndex(_ glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph
  func glyph(at glyphIndex: Int) -> CGGlyph
  @available(swift, obsoleted: 3, renamed: "glyph(at:)")
  func glyphAtIndex(_ glyphIndex: Int) -> CGGlyph
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Please use usesDefaultHyphenation or -[NSParagraphStyle hyphenationFactor] instead.")
  var hyphenationFactor: CGFloat
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, matrix textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key : Any] = [:], in graphicsContext: CGContext)
  @available(swift, obsoleted: 3, renamed: "showCGGlyphs(_:positions:count:font:matrix:attributes:in:)")
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, matrix textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key : Any] = [:], inContext graphicsContext: CGContext)
}
