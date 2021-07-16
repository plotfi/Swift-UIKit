@_exported import Foundation

protocol UIKeyInput : UITextInputTraits {
  var hasText: Bool { get }
  func insertText(_ text: String)
  func deleteBackward()
}
enum UITextStorageDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case forward
  @available(swift, obsoleted: 3, renamed: "forward")
  static var Forward: UITextStorageDirection { get }
  case backward
  @available(swift, obsoleted: 3, renamed: "backward")
  static var Backward: UITextStorageDirection { get }
}
enum UITextLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case right
  @available(swift, obsoleted: 3, renamed: "right")
  static var Right: UITextLayoutDirection { get }
  case left
  @available(swift, obsoleted: 3, renamed: "left")
  static var Left: UITextLayoutDirection { get }
  case up
  @available(swift, obsoleted: 3, renamed: "up")
  static var Up: UITextLayoutDirection { get }
  case down
  @available(swift, obsoleted: 3, renamed: "down")
  static var Down: UITextLayoutDirection { get }
}
struct UITextDirection : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: Int)
  let rawValue: Int
  typealias RawValue = Int
}

extension UITextDirection {
  static func storage(_ direction: UITextStorageDirection) -> UITextDirection
  static func layout(_ direction: UITextLayoutDirection) -> UITextDirection
}
enum UITextGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case character
  @available(swift, obsoleted: 3, renamed: "character")
  static var Character: UITextGranularity { get }
  case word
  @available(swift, obsoleted: 3, renamed: "word")
  static var Word: UITextGranularity { get }
  case sentence
  @available(swift, obsoleted: 3, renamed: "sentence")
  static var Sentence: UITextGranularity { get }
  case paragraph
  @available(swift, obsoleted: 3, renamed: "paragraph")
  static var Paragraph: UITextGranularity { get }
  case line
  @available(swift, obsoleted: 3, renamed: "line")
  static var Line: UITextGranularity { get }
  case document
  @available(swift, obsoleted: 3, renamed: "document")
  static var Document: UITextGranularity { get }
}
@available(iOS 5.1, *)
class UIDictationPhrase : NSObject {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
  init()
}
@available(iOS 9.0, *)
class UITextInputAssistantItem : NSObject {

  /// Default is YES, controls if the user is allowed to hide the shortcuts bar. Does not influence the built in auto-hiding logic.
  var allowsHidingShortcuts: Bool

  /// Contains UIBarButtonItemGroups that should be displayed in the leading position on the keyboard's assistant bar.
  var leadingBarButtonGroups: [UIBarButtonItemGroup]

  /// Contains UIBarButtonItemGroups that should be displayed in the trailing position on the keyboard's assistant bar.
  var trailingBarButtonGroups: [UIBarButtonItemGroup]
  init()
}
@available(iOS 13.0, *)
class UITextPlaceholder : NSObject {
  var rects: [UITextSelectionRect] { get }
  init()
}
enum UITextAlternativeStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UITextAlternativeStyle { get }
  case lowConfidence
  @available(swift, obsoleted: 3, renamed: "lowConfidence")
  static var LowConfidence: UITextAlternativeStyle { get }
}
protocol UITextInput : UIKeyInput {
  @available(iOS 3.2, *)
  func text(in range: UITextRange) -> String?
  @available(swift, obsoleted: 3, renamed: "text(in:)")
  func textInRange(_ range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(_ range: UITextRange, withText text: String)
  @available(swift, obsoleted: 3, renamed: "replace(_:withText:)")
  func replaceRange(_ range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 3.2, *)
  var markedTextStyle: [NSAttributedString.Key : Any]? { get set }
  func setMarkedText(_ markedText: String?, selectedRange: NSRange)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRange(from fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(swift, obsoleted: 3, renamed: "textRange(from:to:)")
  func textRangeFromPosition(_ fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, offset: Int) -> UITextPosition?
  @available(swift, obsoleted: 3, renamed: "position(from:offset:)")
  func positionFromPosition(_ position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(swift, obsoleted: 3, renamed: "position(from:in:offset:)")
  func positionFromPosition(_ position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(_ position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  @available(swift, obsoleted: 3, renamed: "compare(_:to:)")
  func comparePosition(_ position: UITextPosition, toPosition other: UITextPosition) -> ComparisonResult
  @available(iOS 3.2, *)
  func offset(from: UITextPosition, to toPosition: UITextPosition) -> Int
  @available(swift, obsoleted: 3, renamed: "offset(from:to:)")
  func offsetFromPosition(_ from: UITextPosition, toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func position(within range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(swift, obsoleted: 3, renamed: "position(within:farthestIn:)")
  func positionWithinRange(_ range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(byExtending position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(swift, obsoleted: 3, renamed: "characterRange(byExtending:in:)")
  func characterRangeByExtendingPosition(_ position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 6.0, *)
  func baseWritingDirection(for position: UITextPosition, in direction: UITextStorageDirection) -> NSWritingDirection
  @available(swift, obsoleted: 3, renamed: "baseWritingDirection(for:in:)")
  func baseWritingDirectionForPosition(_ position: UITextPosition, inDirection direction: UITextStorageDirection) -> NSWritingDirection
  @available(iOS 6.0, *)
  func setBaseWritingDirection(_ writingDirection: NSWritingDirection, for range: UITextRange)
  @available(swift, obsoleted: 3, renamed: "setBaseWritingDirection(_:for:)")
  func setBaseWritingDirection(_ writingDirection: NSWritingDirection, forRange range: UITextRange)
  @available(iOS 3.2, *)
  func firstRect(for range: UITextRange) -> CGRect
  @available(swift, obsoleted: 3, renamed: "firstRect(for:)")
  func firstRectForRange(_ range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRect(for position: UITextPosition) -> CGRect
  @available(swift, obsoleted: 3, renamed: "caretRect(for:)")
  func caretRectForPosition(_ position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRects(for range: UITextRange) -> [UITextSelectionRect]
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "selectionRects(for:)")
  func selectionRectsForRange(_ range: UITextRange) -> [UITextSelectionRect]
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint) -> UITextPosition?
  @available(swift, obsoleted: 3, renamed: "closestPosition(to:)")
  func closestPositionToPoint(_ point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(swift, obsoleted: 3, renamed: "closestPosition(to:within:)")
  func closestPositionToPoint(_ point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(at point: CGPoint) -> UITextRange?
  @available(swift, obsoleted: 3, renamed: "characterRange(at:)")
  func characterRangeAtPoint(_ point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  optional func shouldChangeText(in range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "shouldChangeText(in:replacementText:)")
  optional func shouldChangeTextInRange(_ range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  optional func textStyling(at position: UITextPosition, in direction: UITextStorageDirection) -> [NSAttributedString.Key : Any]?
  @available(swift, obsoleted: 3, renamed: "textStyling(at:in:)")
  optional func textStylingAtPosition(_ position: UITextPosition, inDirection direction: UITextStorageDirection) -> [NSAttributedString.Key : Any]?
  @available(iOS 3.2, *)
  optional func position(within range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(swift, obsoleted: 3, renamed: "position(within:atCharacterOffset:)")
  optional func positionWithinRange(_ range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  optional func characterOffset(of position: UITextPosition, within range: UITextRange) -> Int
  @available(swift, obsoleted: 3, renamed: "characterOffset(of:within:)")
  optional func characterOffsetOfPosition(_ position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(iOS 2.0, *)
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  @available(iOS 5.1, *)
  optional func insertDictationResult(_ dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional var insertDictationResultPlaceholder: Any { get }
  optional func frame(forDictationResultPlaceholder placeholder: Any) -> CGRect
  @available(swift, obsoleted: 3, renamed: "frame(forDictationResultPlaceholder:)")
  optional func frameForDictationResultPlaceholder(_ placeholder: Any) -> CGRect
  optional func removeDictationResultPlaceholder(_ placeholder: Any, willInsertResult: Bool)
  optional func insertText(_ text: String, alternatives: [String], style: UITextAlternativeStyle)
  @available(iOS 3.2, *)
  optional func setAttributedMarkedText(_ markedText: NSAttributedString?, selectedRange: NSRange)
  @available(iOS 13.0, *)
  optional func insertTextPlaceholder(with size: CGSize) -> UITextPlaceholder
  @available(swift, obsoleted: 3, renamed: "insertTextPlaceholder(with:)")
  optional func insertTextPlaceholderWithSize(_ size: CGSize) -> UITextPlaceholder
  @available(iOS 13.0, *)
  optional func remove(_ textPlaceholder: UITextPlaceholder)
  @available(swift, obsoleted: 3, renamed: "remove(_:)")
  optional func removeTextPlaceholder(_ textPlaceholder: UITextPlaceholder)
  @available(iOS 9.0, *)
  optional func beginFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "beginFloatingCursor(at:)")
  optional func beginFloatingCursorAtPoint(_ point: CGPoint)
  @available(iOS 9.0, *)
  optional func updateFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "updateFloatingCursor(at:)")
  optional func updateFloatingCursorAtPoint(_ point: CGPoint)
  @available(iOS 9.0, *)
  optional func endFloatingCursor()
}
@available(iOS, introduced: 3.2, deprecated: 8.0, renamed: "NSAttributedString.Key.backgroundColor")
let UITextInputTextBackgroundColorKey: String
@available(iOS, introduced: 3.2, deprecated: 8.0, renamed: "NSAttributedString.Key.foregroundColor")
let UITextInputTextColorKey: String
@available(iOS, introduced: 3.2, deprecated: 8.0, renamed: "NSAttributedString.Key.font")
let UITextInputTextFontKey: String
@available(iOS 3.2, *)
class UITextPosition : NSObject {
  init()
}
@available(iOS 3.2, *)
class UITextRange : NSObject {
  var isEmpty: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isEmpty")
  var empty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
  init()
}
@available(iOS 6.0, *)
class UITextSelectionRect : NSObject {
  var rect: CGRect { get }
  var writingDirection: NSWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
  init()
}
protocol UITextInputDelegate : NSObjectProtocol {
  func selectionWillChange(_ textInput: UITextInput?)
  func selectionDidChange(_ textInput: UITextInput?)
  func textWillChange(_ textInput: UITextInput?)
  func textDidChange(_ textInput: UITextInput?)
}
protocol UITextInputTokenizer : NSObjectProtocol {
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(_ position: UITextPosition, with granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(swift, obsoleted: 3, renamed: "rangeEnclosingPosition(_:with:inDirection:)")
  func rangeEnclosingPosition(_ position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(swift, obsoleted: 3, renamed: "position(from:toBoundary:inDirection:)")
  func positionFromPosition(_ position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 3.2, *)
class UITextInputStringTokenizer : NSObject, UITextInputTokenizer {
  init(textInput: UIResponder & UITextInput)
  init()
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(_ position: UITextPosition, with granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 4.2, *)
class UITextInputMode : NSObject, NSSecureCoding {
  var primaryLanguage: String? { get }
  @available(iOS, unavailable, introduced: 4.2, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class func current() -> UITextInputMode?
  @available(swift, obsoleted: 3, renamed: "current()")
  @available(iOS, unavailable, introduced: 4.2, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  class func currentInputMode() -> UITextInputMode?
  class var activeInputModes: [UITextInputMode] { get }
  init()
  @available(iOS 4.2, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 4.2, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
@available(iOS 4.2, *)
@available(swift, obsoleted: 3, renamed: "UITextInputMode.currentInputModeDidChangeNotification")
let UITextInputCurrentInputModeDidChangeNotification: NSNotification.Name
extension UITextInputMode {
  @available(iOS 4.2, *)
  class let currentInputModeDidChangeNotification: NSNotification.Name
}
@available(iOS, introduced: 3.2, deprecated: 13.0, renamed: "NSWritingDirection")
typealias UITextWritingDirection = NSWritingDirection
@available(iOS, introduced: 3.2, deprecated: 13.0, renamed: "NSWritingDirection.natural")
@available(*, unavailable, message: "Not available in Swift")
let UITextWritingDirectionNatural: UITextWritingDirection
@available(iOS, introduced: 3.2, deprecated: 13.0, renamed: "NSWritingDirection.leftToRight")
@available(*, unavailable, message: "Not available in Swift")
let UITextWritingDirectionLeftToRight: UITextWritingDirection
@available(iOS, introduced: 3.2, deprecated: 13.0, renamed: "NSWritingDirection.rightToLeft")
@available(*, unavailable, message: "Not available in Swift")
let UITextWritingDirectionRightToLeft: UITextWritingDirection
