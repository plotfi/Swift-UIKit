@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UITextField.BorderStyle")
typealias UITextBorderStyle = UITextField.BorderStyle
@available(swift, obsoleted: 4.2, renamed: "UITextField.ViewMode")
typealias UITextFieldViewMode = UITextField.ViewMode
@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITextField.DidEndEditingReason")
typealias UITextFieldDidEndEditingReason = UITextField.DidEndEditingReason
@available(iOS 2.0, *)
class UITextField : UIControl, UITextInput, NSCoding, UIContentSizeCategoryAdjusting {
  var text: String?
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextField.BorderStyle
  @available(iOS 7.0, *)
  var defaultTextAttributes: [NSAttributedString.Key : Any]
  var placeholder: String?
  @available(iOS 6.0, *)
  @NSCopying var attributedPlaceholder: NSAttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var isEditing: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isEditing")
  var editing: Bool { get }
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
  var typingAttributes: [NSAttributedString.Key : Any]?
  var clearButtonMode: UITextField.ViewMode
  var leftView: UIView?
  var leftViewMode: UITextField.ViewMode
  var rightView: UIView?
  var rightViewMode: UITextField.ViewMode
  func borderRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "borderRect(forBounds:)")
  func borderRectForBounds(_ bounds: CGRect) -> CGRect
  func textRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "textRect(forBounds:)")
  func textRectForBounds(_ bounds: CGRect) -> CGRect
  func placeholderRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "placeholderRect(forBounds:)")
  func placeholderRectForBounds(_ bounds: CGRect) -> CGRect
  func editingRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "editingRect(forBounds:)")
  func editingRectForBounds(_ bounds: CGRect) -> CGRect
  func clearButtonRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "clearButtonRect(forBounds:)")
  func clearButtonRectForBounds(_ bounds: CGRect) -> CGRect
  func leftViewRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "leftViewRect(forBounds:)")
  func leftViewRectForBounds(_ bounds: CGRect) -> CGRect
  func rightViewRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "rightViewRect(forBounds:)")
  func rightViewRectForBounds(_ bounds: CGRect) -> CGRect
  func drawText(in rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawText(in:)")
  func drawTextInRect(_ rect: CGRect)
  func drawPlaceholder(in rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "drawPlaceholder(in:)")
  func drawPlaceholderInRect(_ rect: CGRect)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
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
extension UITextField : UITextDraggable, UITextDroppable, UITextPasteConfigurationSupporting {
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
extension UIView {
  func endEditing(_ force: Bool) -> Bool
}
protocol UITextFieldDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldDidBeginEditing(_ textField: UITextField)
  @available(iOS 2.0, *)
  optional func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldDidEndEditing(_ textField: UITextField)
  @available(iOS 10.0, *)
  optional func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
  @available(iOS 2.0, *)
  optional func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
  @available(swift, obsoleted: 3, renamed: "textField(_:shouldChangeCharactersIn:replacementString:)")
  optional func textField(_ textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
  @available(iOS 13.0, *)
  optional func textFieldDidChangeSelection(_ textField: UITextField)
  @available(iOS 2.0, *)
  optional func textFieldShouldClear(_ textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldShouldReturn(_ textField: UITextField) -> Bool
}
@available(swift, obsoleted: 3, renamed: "UITextField.textDidBeginEditingNotification")
let UITextFieldTextDidBeginEditingNotification: NSNotification.Name
extension UITextField {
  class let textDidBeginEditingNotification: NSNotification.Name
  class let textDidEndEditingNotification: NSNotification.Name
  class let textDidChangeNotification: NSNotification.Name
  @available(iOS 10.0, *)
  class let didEndEditingReasonUserInfoKey: String
  enum BorderStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITextField.BorderStyle { get }
    case line
    @available(swift, obsoleted: 3, renamed: "line")
    static var Line: UITextField.BorderStyle { get }
    case bezel
    @available(swift, obsoleted: 3, renamed: "bezel")
    static var Bezel: UITextField.BorderStyle { get }
    case roundedRect
    @available(swift, obsoleted: 3, renamed: "roundedRect")
    static var RoundedRect: UITextField.BorderStyle { get }
  }
  enum ViewMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case never
    @available(swift, obsoleted: 3, renamed: "never")
    static var Never: UITextField.ViewMode { get }
    case whileEditing
    @available(swift, obsoleted: 3, renamed: "whileEditing")
    static var WhileEditing: UITextField.ViewMode { get }
    case unlessEditing
    @available(swift, obsoleted: 3, renamed: "unlessEditing")
    static var UnlessEditing: UITextField.ViewMode { get }
    case always
    @available(swift, obsoleted: 3, renamed: "always")
    static var Always: UITextField.ViewMode { get }
  }
  @available(iOS 10.0, *)
  enum DidEndEditingReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case committed
    @available(swift, obsoleted: 3, renamed: "committed")
    static var Committed: UITextField.DidEndEditingReason { get }
    @available(iOS, unavailable)
    case cancelled
  }
}
@available(swift, obsoleted: 3, renamed: "UITextField.textDidEndEditingNotification")
let UITextFieldTextDidEndEditingNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UITextField.textDidChangeNotification")
let UITextFieldTextDidChangeNotification: NSNotification.Name
@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITextField.didEndEditingReasonUserInfoKey")
let UITextFieldDidEndEditingReasonKey: String
