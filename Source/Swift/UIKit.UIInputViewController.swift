@_exported import Foundation

protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  @available(iOS 11.0, *)
  var selectedText: String? { get }
  @available(iOS 10.0, *)
  var documentInputMode: UITextInputMode? { get }
  @available(iOS 11.0, *)
  var documentIdentifier: UUID { get }
  func adjustTextPosition(byCharacterOffset offset: Int)
  @available(swift, obsoleted: 3, renamed: "adjustTextPosition(byCharacterOffset:)")
  func adjustTextPositionByCharacterOffset(_ offset: Int)
  @available(iOS 13.0, *)
  func setMarkedText(_ markedText: String, selectedRange: NSRange)
  @available(iOS 13.0, *)
  func unmarkText()
}
@available(iOS 8.0, *)
class UIInputViewController : UIViewController, UITextInputDelegate {
  var inputView: UIInputView?
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  var hasDictationKey: Bool
  @available(iOS 11.0, *)
  var hasFullAccess: Bool { get }
  @available(iOS 11.0, *)
  var needsInputModeSwitchKey: Bool { get }
  func dismissKeyboard()
  func advanceToNextInputMode()
  @available(iOS 10.0, *)
  func handleInputModeList(from view: UIView, with event: UIEvent)
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "handleInputModeList(from:with:)")
  func handleInputModeListFromView(_ view: UIView, withEvent event: UIEvent)
  func requestSupplementaryLexicon(completion completionHandler: @escaping (UILexicon) -> Void)
  func requestSupplementaryLexicon() async -> UILexicon
  @available(swift, obsoleted: 3, renamed: "requestSupplementaryLexicon(completion:)")
  func requestSupplementaryLexiconWithCompletion(_ completionHandler: @escaping (UILexicon) -> Void)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(iOS 8.0, *)
  func selectionWillChange(_ textInput: UITextInput?)
  @available(iOS 8.0, *)
  func selectionDidChange(_ textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textWillChange(_ textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textDidChange(_ textInput: UITextInput?)
}
