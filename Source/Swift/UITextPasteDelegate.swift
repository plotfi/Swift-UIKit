@_exported import Foundation

@available(iOS 11.0, *)
protocol UITextPasteDelegate : NSObjectProtocol {
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, transform item: UITextPasteItem)
  @available(swift, obsoleted: 3, renamed: "textPasteConfigurationSupporting(_:transform:)")
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, transformPasteItem item: UITextPasteItem)
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, combineItemAttributedStrings itemStrings: [NSAttributedString], for textRange: UITextRange) -> NSAttributedString
  @available(swift, obsoleted: 3, renamed: "textPasteConfigurationSupporting(_:combineItemAttributedStrings:for:)")
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, combineItemAttributedStrings itemStrings: [NSAttributedString], forRange textRange: UITextRange) -> NSAttributedString
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, performPasteOf attributedString: NSAttributedString, to textRange: UITextRange) -> UITextRange
  @available(swift, obsoleted: 3, renamed: "textPasteConfigurationSupporting(_:performPasteOf:to:)")
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, performPasteOfAttributedString attributedString: NSAttributedString, toRange textRange: UITextRange) -> UITextRange
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, shouldAnimatePasteOf attributedString: NSAttributedString, to textRange: UITextRange) -> Bool
  @available(swift, obsoleted: 3, renamed: "textPasteConfigurationSupporting(_:shouldAnimatePasteOf:to:)")
  optional func textPasteConfigurationSupporting(_ textPasteConfigurationSupporting: UITextPasteConfigurationSupporting, shouldAnimatePasteOfAttributedString attributedString: NSAttributedString, toRange textRange: UITextRange) -> Bool
}
@available(iOS 11.0, *)
protocol UITextPasteItem : NSObjectProtocol {
  var itemProvider: NSItemProvider { get }
  var localObject: Any? { get }
  var defaultAttributes: [NSAttributedString.Key : Any] { get }
  func setResult(string: String)
  @available(swift, obsoleted: 3, renamed: "setResult(string:)")
  func setStringResult(_ string: String)
  func setResult(attributedString string: NSAttributedString)
  @available(swift, obsoleted: 3, renamed: "setResult(attributedString:)")
  func setAttributedStringResult(_ string: NSAttributedString)
  func setResult(attachment textAttachment: NSTextAttachment)
  @available(swift, obsoleted: 3, renamed: "setResult(attachment:)")
  func setAttachmentResult(_ textAttachment: NSTextAttachment)
  func setNoResult()
  func setDefaultResult()
}
