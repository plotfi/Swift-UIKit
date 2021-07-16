@_exported import Foundation

typealias UITextAttributesConversionHandler = ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any]
@available(iOS 13.0, *)
enum UIEditingInteractionConfiguration : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIEditingInteractionConfiguration { get }
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIEditingInteractionConfiguration { get }
}
protocol UIResponderStandardEditActions : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func cut(_ sender: Any?)
  @available(iOS 3.0, *)
  optional func copy(_ sender: Any?)
  @available(iOS 3.0, *)
  optional func paste(_ sender: Any?)
  @available(iOS 3.0, *)
  optional func select(_ sender: Any?)
  @available(iOS 3.0, *)
  optional func selectAll(_ sender: Any?)
  @available(iOS 3.2, *)
  optional func delete(_ sender: Any?)
  @available(iOS 5.0, *)
  optional func makeTextWritingDirectionLeftToRight(_ sender: Any?)
  @available(iOS 5.0, *)
  optional func makeTextWritingDirectionRightToLeft(_ sender: Any?)
  @available(iOS 6.0, *)
  optional func toggleBoldface(_ sender: Any?)
  @available(iOS 6.0, *)
  optional func toggleItalics(_ sender: Any?)
  @available(iOS 6.0, *)
  optional func toggleUnderline(_ sender: Any?)
  @available(iOS 7.0, *)
  optional func increaseSize(_ sender: Any?)
  @available(iOS 7.0, *)
  optional func decreaseSize(_ sender: Any?)
  @available(iOS 13.0, *)
  optional func updateTextAttributes(conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any])
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "updateTextAttributes(conversionHandler:)")
  optional func updateTextAttributesWithConversionHandler(_ conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any])
}
@available(iOS 2.0, *)
class UIResponder : NSObject, UIResponderStandardEditActions {
  var next: UIResponder? { get }
  @available(swift, obsoleted: 3, renamed: "next")
  var nextResponder: UIResponder? { get }
  var canBecomeFirstResponder: Bool { get }
  func becomeFirstResponder() -> Bool
  var canResignFirstResponder: Bool { get }
  func resignFirstResponder() -> Bool
  var isFirstResponder: Bool { get }
  func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
  @available(swift, obsoleted: 3, renamed: "touchesBegan(_:with:)")
  func touchesBegan(_ touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
  @available(swift, obsoleted: 3, renamed: "touchesMoved(_:with:)")
  func touchesMoved(_ touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
  @available(swift, obsoleted: 3, renamed: "touchesEnded(_:with:)")
  func touchesEnded(_ touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
  @available(swift, obsoleted: 3, renamed: "touchesCancelled(_:with:)")
  func touchesCancelled(_ touches: Set<UITouch>, withEvent event: UIEvent?)
  @available(iOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>)
  @available(iOS 9.0, *)
  func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesBegan(_:with:)")
  func pressesBegan(_ presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesChanged(_:with:)")
  func pressesChanged(_ presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesEnded(_:with:)")
  func pressesEnded(_ presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pressesCancelled(_:with:)")
  func pressesCancelled(_ presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 3.0, *)
  func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "motionBegan(_:with:)")
  func motionBegan(_ motion: UIEvent.EventSubtype, withEvent event: UIEvent?)
  @available(iOS 3.0, *)
  func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "motionEnded(_:with:)")
  func motionEnded(_ motion: UIEvent.EventSubtype, withEvent event: UIEvent?)
  @available(iOS 3.0, *)
  func motionCancelled(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "motionCancelled(_:with:)")
  func motionCancelled(_ motion: UIEvent.EventSubtype, withEvent event: UIEvent?)
  @available(iOS 4.0, *)
  func remoteControlReceived(with event: UIEvent?)
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "remoteControlReceived(with:)")
  func remoteControlReceivedWithEvent(_ event: UIEvent?)
  @available(iOS 3.0, *)
  func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool
  @available(iOS 7.0, *)
  func target(forAction action: Selector, withSender sender: Any?) -> Any?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "target(forAction:withSender:)")
  func targetForAction(_ action: Selector, withSender sender: Any?) -> Any?
  @available(iOS 13.0, *)
  func buildMenu(with builder: UIMenuBuilder)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "buildMenu(with:)")
  func buildMenuWithBuilder(_ builder: UIMenuBuilder)
  @available(iOS 13.0, *)
  func validate(_ command: UICommand)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "validate(_:)")
  func validateCommand(_ command: UICommand)
  @available(iOS 3.0, *)
  var undoManager: UndoManager? { get }
  @available(iOS 13.0, *)
  var editingInteractionConfiguration: UIEditingInteractionConfiguration { get }
  init()
  @available(iOS 3.0, *)
  func cut(_ sender: Any?)
  @available(iOS 3.0, *)
  func copy(_ sender: Any?)
  @available(iOS 3.0, *)
  func paste(_ sender: Any?)
  @available(iOS 3.0, *)
  func select(_ sender: Any?)
  @available(iOS 3.0, *)
  func selectAll(_ sender: Any?)
  @available(iOS 3.2, *)
  func delete(_ sender: Any?)
  @available(iOS 5.0, *)
  func makeTextWritingDirectionLeftToRight(_ sender: Any?)
  @available(iOS 5.0, *)
  func makeTextWritingDirectionRightToLeft(_ sender: Any?)
  @available(iOS 6.0, *)
  func toggleBoldface(_ sender: Any?)
  @available(iOS 6.0, *)
  func toggleItalics(_ sender: Any?)
  @available(iOS 6.0, *)
  func toggleUnderline(_ sender: Any?)
  @available(iOS 7.0, *)
  func increaseSize(_ sender: Any?)
  @available(iOS 7.0, *)
  func decreaseSize(_ sender: Any?)
  @available(iOS 13.0, *)
  func updateTextAttributes(conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any])
}
extension UIResponder {
  @available(iOS 7.0, *)
  var keyCommands: [UIKeyCommand]? { get }
}
extension UIResponder {
  @available(iOS 3.2, *)
  var inputView: UIView? { get }
  @available(iOS 3.2, *)
  var inputAccessoryView: UIView? { get }

  /// This method is for clients that wish to put buttons on the Shortcuts Bar, shown on top of the keyboard.
  /// You may modify the returned inputAssistantItem to add to or replace the existing items on the bar.
  /// Modifications made to the returned UITextInputAssistantItem are reflected automatically.
  /// This method should not be overridden. Goes up the responder chain.
  @available(iOS 9.0, *)
  var inputAssistantItem: UITextInputAssistantItem { get }
  @available(iOS 8.0, *)
  var inputViewController: UIInputViewController? { get }
  @available(iOS 8.0, *)
  var inputAccessoryViewController: UIInputViewController? { get }
  @available(iOS 7.0, *)
  var textInputMode: UITextInputMode? { get }
  @available(iOS 7.0, *)
  var textInputContextIdentifier: String? { get }
  @available(iOS 7.0, *)
  class func clearTextInputContextIdentifier(_ identifier: String)
  @available(iOS 3.2, *)
  func reloadInputViews()
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIKeyCommand.inputUpArrow")
let UIKeyInputUpArrow: String
extension UIKeyCommand {
  @available(iOS 7.0, *)
  class let inputUpArrow: String
  @available(iOS 7.0, *)
  class let inputDownArrow: String
  @available(iOS 7.0, *)
  class let inputLeftArrow: String
  @available(iOS 7.0, *)
  class let inputRightArrow: String
  @available(iOS 7.0, *)
  class let inputEscape: String
  @available(iOS 8.0, *)
  class let inputPageUp: String
  @available(iOS 8.0, *)
  class let inputPageDown: String
  @available(iOS 13.4, *)
  class let inputHome: String
  @available(iOS 13.4, *)
  class let inputEnd: String
  @available(iOS 13.4, *)
  class let f1: String
  @available(iOS 13.4, *)
  class let f2: String
  @available(iOS 13.4, *)
  class let f3: String
  @available(iOS 13.4, *)
  class let f4: String
  @available(iOS 13.4, *)
  class let f5: String
  @available(iOS 13.4, *)
  class let f6: String
  @available(iOS 13.4, *)
  class let f7: String
  @available(iOS 13.4, *)
  class let f8: String
  @available(iOS 13.4, *)
  class let f9: String
  @available(iOS 13.4, *)
  class let f10: String
  @available(iOS 13.4, *)
  class let f11: String
  @available(iOS 13.4, *)
  class let f12: String
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIKeyCommand.inputDownArrow")
let UIKeyInputDownArrow: String
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIKeyCommand.inputLeftArrow")
let UIKeyInputLeftArrow: String
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIKeyCommand.inputRightArrow")
let UIKeyInputRightArrow: String
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIKeyCommand.inputEscape")
let UIKeyInputEscape: String
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.inputPageUp")
let UIKeyInputPageUp: String
@available(iOS 8.0, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.inputPageDown")
let UIKeyInputPageDown: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.inputHome")
let UIKeyInputHome: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.inputEnd")
let UIKeyInputEnd: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f1")
let UIKeyInputF1: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f2")
let UIKeyInputF2: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f3")
let UIKeyInputF3: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f4")
let UIKeyInputF4: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f5")
let UIKeyInputF5: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f6")
let UIKeyInputF6: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f7")
let UIKeyInputF7: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f8")
let UIKeyInputF8: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f9")
let UIKeyInputF9: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f10")
let UIKeyInputF10: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f11")
let UIKeyInputF11: String
@available(iOS 13.4, *)
@available(swift, obsoleted: 3, renamed: "UIKeyCommand.f12")
let UIKeyInputF12: String
extension UIResponder : UIUserActivityRestoring {
  @available(iOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(_ activity: NSUserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(_ activity: NSUserActivity)
}
extension UIResponder : UIPasteConfigurationSupporting {
  @available(iOS 11.0, *)
  @NSCopying var pasteConfiguration: UIPasteConfiguration?
  @available(iOS 11.0, *)
  func paste(itemProviders: [NSItemProvider])
  @available(iOS 11.0, *)
  func canPaste(_ itemProviders: [NSItemProvider]) -> Bool
}
