@_exported import Foundation

protocol UITextViewDelegate : UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewShouldEndEditing(_ textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidBeginEditing(_ textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidEndEditing(_ textView: UITextView)
  @available(iOS 2.0, *)
  optional func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(swift, obsoleted: 3, renamed: "textView(_:shouldChangeTextIn:replacementText:)")
  optional func textView(_ textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidChange(_ textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidChangeSelection(_ textView: UITextView)
  @available(iOS 10.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "textView(_:shouldInteractWith:in:interaction:)")
  optional func textView(_ textView: UITextView, shouldInteractWithURL URL: URL, inRange characterRange: NSRange, interaction: UITextItemInteraction) -> Bool
  @available(iOS 10.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "textView(_:shouldInteractWith:in:interaction:)")
  optional func textView(_ textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange, interaction: UITextItemInteraction) -> Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  optional func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool
  @available(swift, obsoleted: 3, renamed: "textView(_:shouldInteractWith:in:)")
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  optional func textView(_ textView: UITextView, shouldInteractWithURL URL: URL, inRange characterRange: NSRange) -> Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  optional func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
  @available(swift, obsoleted: 3, renamed: "textView(_:shouldInteractWith:in:)")
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  optional func textView(_ textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool
}
@available(iOS 2.0, *)
class UITextView : UIScrollView, UITextInput, UIContentSizeCategoryAdjusting {
  weak var delegate: @sil_weak UITextViewDelegate?
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  var isEditable: Bool
  @available(swift, obsoleted: 3, renamed: "isEditable")
  var editable: Bool
  @available(iOS 7.0, *)
  var isSelectable: Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "isSelectable")
  var selectable: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString!
  @available(iOS 6.0, *)
  var typingAttributes: [NSAttributedString.Key : Any]
  func scrollRangeToVisible(_ range: NSRange)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(iOS 7.0, *)
  init(frame: CGRect, textContainer: NSTextContainer?)
  init?(coder: NSCoder)
  @available(iOS 7.0, *)
  var textContainer: NSTextContainer { get }
  @available(iOS 7.0, *)
  var textContainerInset: UIEdgeInsets
  @available(iOS 7.0, *)
  var layoutManager: NSLayoutManager { get }
  @available(iOS 7.0, *)
  var textStorage: NSTextStorage { get }
  @available(iOS 7.0, *)
  var linkTextAttributes: [NSAttributedString.Key : Any]!
  @available(iOS 13.0, *)
  var usesStandardTextScaling: Bool
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 3.2, *)
  var markedTextStyle: [NSAttributedString.Key : Any]?
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(iOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 2.0, *)
  var textInputView: UIView { get }
  @available(iOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(iOS 2.0, *)
  var insertDictationResultPlaceholder: Any { get }
  @available(iOS 2.0, *)
  var hasText: Bool { get }
  @available(iOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(iOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(iOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(iOS 11.0, *)
  var smartQuotesType: UITextSmartQuotesType
  @available(iOS 11.0, *)
  var smartDashesType: UITextSmartDashesType
  @available(iOS 11.0, *)
  var smartInsertDeleteType: UITextSmartInsertDeleteType
  @available(iOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(iOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(iOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(iOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(iOS 2.0, *)
  var isSecureTextEntry: Bool
  @available(iOS 10.0, *)
  var textContentType: UITextContentType!
  @available(iOS 12.0, *)
  @NSCopying var passwordRules: UITextInputPasswordRules?
  @available(iOS 10.0, *)
  var adjustsFontForContentSizeCategory: Bool
  @available(iOS 3.2, *)
  func text(in range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(_ range: UITextRange, withText text: String)
  @available(iOS 2.0, *)
  func setMarkedText(_ markedText: String?, selectedRange: NSRange)
  @available(iOS 2.0, *)
  func unmarkText()
  @available(iOS 3.2, *)
  func textRange(from fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(_ position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  @available(iOS 3.2, *)
  func offset(from: UITextPosition, to toPosition: UITextPosition) -> Int
  @available(iOS 3.2, *)
  func position(within range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(byExtending position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 6.0, *)
  func baseWritingDirection(for position: UITextPosition, in direction: UITextStorageDirection) -> NSWritingDirection
  @available(iOS 6.0, *)
  func setBaseWritingDirection(_ writingDirection: NSWritingDirection, for range: UITextRange)
  @available(iOS 3.2, *)
  func firstRect(for range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRect(for position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRects(for range: UITextRange) -> [UITextSelectionRect]
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(at point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  func shouldChangeText(in range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  func textStyling(at position: UITextPosition, in direction: UITextStorageDirection) -> [NSAttributedString.Key : Any]?
  @available(iOS 3.2, *)
  func position(within range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterOffset(of position: UITextPosition, within range: UITextRange) -> Int
  @available(iOS 5.1, *)
  func insertDictationResult(_ dictationResult: [UIDictationPhrase])
  @available(iOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(iOS 2.0, *)
  func dictationRecognitionFailed()
  @available(iOS 2.0, *)
  func frame(forDictationResultPlaceholder placeholder: Any) -> CGRect
  @available(iOS 2.0, *)
  func removeDictationResultPlaceholder(_ placeholder: Any, willInsertResult: Bool)
  @available(iOS 2.0, *)
  func insertText(_ text: String, alternatives: [String], style: UITextAlternativeStyle)
  @available(iOS 3.2, *)
  func setAttributedMarkedText(_ markedText: NSAttributedString?, selectedRange: NSRange)
  @available(iOS 13.0, *)
  func insertTextPlaceholder(with size: CGSize) -> UITextPlaceholder
  @available(iOS 13.0, *)
  func remove(_ textPlaceholder: UITextPlaceholder)
  @available(iOS 9.0, *)
  func beginFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  func updateFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  func endFloatingCursor()
  @available(iOS 2.0, *)
  func insertText(_ text: String)
  @available(iOS 2.0, *)
  func deleteBackward()
}
extension UITextView : UITextDraggable, UITextDroppable, UITextPasteConfigurationSupporting {
  @available(iOS 11.0, *)
  weak var textDragDelegate: @sil_weak UITextDragDelegate?
  @available(iOS 11.0, *)
  var textDragInteraction: UIDragInteraction? { get }
  @available(iOS 11.0, *)
  var isTextDragActive: Bool { get }
  @available(iOS 11.0, *)
  var textDragOptions: UITextDragOptions
  @available(iOS 11.0, *)
  weak var textDropDelegate: @sil_weak UITextDropDelegate?
  @available(iOS 11.0, *)
  var textDropInteraction: UIDropInteraction? { get }
  @available(iOS 11.0, *)
  var isTextDropActive: Bool { get }
  @available(iOS 11.0, *)
  weak var pasteDelegate: @sil_weak UITextPasteDelegate?
}
@available(swift, obsoleted: 3, renamed: "UITextView.textDidBeginEditingNotification")
let UITextViewTextDidBeginEditingNotification: NSNotification.Name
extension UITextView {
  class let textDidBeginEditingNotification: NSNotification.Name
  class let textDidChangeNotification: NSNotification.Name
  class let textDidEndEditingNotification: NSNotification.Name
}
@available(swift, obsoleted: 3, renamed: "UITextView.textDidChangeNotification")
let UITextViewTextDidChangeNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UITextView.textDidEndEditingNotification")
let UITextViewTextDidEndEditingNotification: NSNotification.Name
