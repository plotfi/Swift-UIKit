@_exported import Foundation


/// UISearchTextField is the subclass of UITextField used in UISearchBar, and can also be used elsewhere (e.g. as the titleView of a UINavigationItem).
///
/// In addition to its text, a UISearchField can contain tokens. Tokens are discrete representations of non-textual content. Your app might use tokens to represent filters that are being applied in conjunction with the search field’s text. Tokens are always created by the application, and always occur contiguously before the search field’s text.
///
/// @note
/// Because the system drives selection and keyboard behaviors through the UITextInput protocol, and UISearchTextField supports selecting tokens, UISearchTextField assigns UITextPositions to tokens as well as text. If the current selection includes any tokens, their positions are part of the range returned by `UISearchTextField.selectedTextRange`. Use the `textualRange` property to obtain the range of the text field that excludes any tokens.
///
/// Tokens can be programmatically selected by including their position in a range assigned to the `selectedTextRange` property. UISearchTextField does not support placing an insertion point before a token; attempting to do so will select the token instead.
@available(iOS 13.0, *)
class UISearchTextField : UITextField {

  /// Simple access to the collection of tokens.
  var tokens: [UISearchToken]
  func insertToken(_ token: UISearchToken, at tokenIndex: Int)
  @available(swift, obsoleted: 3, renamed: "insertToken(_:at:)")
  func insertToken(_ token: UISearchToken, atIndex tokenIndex: Int)
  func removeToken(at tokenIndex: Int)
  @available(swift, obsoleted: 3, renamed: "removeToken(at:)")
  func removeTokenAtIndex(_ tokenIndex: Int)

  /// Returns the position of the provided token. To select a token, assign a UITextRange containing its position to the selectedTextRange property.
  func positionOfToken(at tokenIndex: Int) -> UITextPosition

  /// Returns the position of the provided token. To select a token, assign a UITextRange containing its position to the selectedTextRange property.
  @available(swift, obsoleted: 3, renamed: "positionOfToken(at:)")
  func positionOfTokenAtIndex(_ tokenIndex: Int) -> UITextPosition

  /// Returns the tokens which are contained within the provided range.
  ///
  /// You can use this method to determine which tokens are included in the user’s current selection. The range may span more than one token or a mixture of tokens and text.
  func tokens(in textRange: UITextRange) -> [UISearchToken]

  /// Returns the tokens which are contained within the provided range.
  ///
  /// You can use this method to determine which tokens are included in the user’s current selection. The range may span more than one token or a mixture of tokens and text.
  @available(swift, obsoleted: 3, renamed: "tokens(in:)")
  func tokensInRange(_ textRange: UITextRange) -> [UISearchToken]

  /// The range that corresponds to the field’s text, exclusive of any tokens.
  ///
  /// @see -[<UITextInput> positionWithinRange:atCharacterOffset:]
  var textualRange: UITextRange { get }

  /// Removes any text contained in the specified range, inserts the provided token at the specified index, and selects the newly-inserted token. Does not replace any tokens within the provided range. If the range intersects the marked text range, the marked text is committed.
  ///
  /// This method is essentially a convenience wrapper around the more fundamental `text`, `tokens`, and `selectedTextRange` properties, providing the selection behavior the user will expect.
  ///
  /// @note
  /// Because this method does not remove any tokens in the provided range, the caller can pass the field’s selectedTextRange to convert the selected portion of the text into a token without first having to trim the range.
  func replaceTextualPortion(of textRange: UITextRange, with token: UISearchToken, at tokenIndex: Int)

  /// Removes any text contained in the specified range, inserts the provided token at the specified index, and selects the newly-inserted token. Does not replace any tokens within the provided range. If the range intersects the marked text range, the marked text is committed.
  ///
  /// This method is essentially a convenience wrapper around the more fundamental `text`, `tokens`, and `selectedTextRange` properties, providing the selection behavior the user will expect.
  ///
  /// @note
  /// Because this method does not remove any tokens in the provided range, the caller can pass the field’s selectedTextRange to convert the selected portion of the text into a token without first having to trim the range.
  @available(swift, obsoleted: 3, renamed: "replaceTextualPortion(of:with:at:)")
  func replaceTextualPortionOfRange(_ textRange: UITextRange, withToken token: UISearchToken, atIndex tokenIndex: Int)

  /// Set this to nil for tokens to use their default color.
  var tokenBackgroundColor: UIColor!

  /// Whether the user can remove tokens through standard actions such as Delete and Cut.
  ///
  /// The application can always remove tokens programmatically. If this property is true, the application must be prepared not only for tokens to be removed, but also to be re-added through Undo. Defaults to true.
  var allowsDeletingTokens: Bool

  /// Whether the user can copy tokens to the pasteboard or drag them out of the text field.
  ///
  /// To support copying tokens, this property must be true and the delegate must provide an item provider for the tokens to be copied. UISearchTextField always enables the Copy command if any plain text is selected, even if the selection also includes tokens and this property is false. Defaults to true.
  var allowsCopyingTokens: Bool
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}

/// An individual token in a UISearchTextField.
@available(iOS 13.0, *)
class UISearchToken : NSObject {
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  /*not inherited*/ init(icon: UIImage?, text: String)
  @available(*, unavailable, renamed: "init(icon:text:)", message: "Not available in Swift")
  class func tokenWithIcon(_ icon: UIImage?, text: String) -> UISearchToken

  /// The object which this token represents.
  ///
  /// The application can assign any object it wants to this property. UISearchTextField does not attempt to interpret this object.
  ///
  /// @note
  /// Because UISearchToken strongly references its representedObject, consider assigning a lightweight representation (such as NSManagedObjectID) instead of a complete model object to this property. The lifetime of a UISearchToken may be considerably longer than expected, especially if the token has been copied to a pasteboard.
  var representedObject: Any?
}
protocol UISearchTextFieldDelegate : UITextFieldDelegate {

  /// Implements cut and copy of tokens.
  ///
  /// To support drag and drop and the Cut and Copy commands, your delegate must implement this method and return an NSItemProvider for the requested token. The field’s textPasteDelegate is responsible for implementing pasting of tokens. Your delegate can provide a plain text representation for pasting in other contexts, but should register a custom type identifier so it can recognize and reconstruct the token when pasted into the same field.
  ///
  /// This method will only be called if either of the field’s allowsCopyingTokens or allowsDeletingTokens properties is true.
  @available(iOS 13.0, *)
  optional func searchTextField(_ searchTextField: UISearchTextField, itemProviderForCopying token: UISearchToken) -> NSItemProvider

  /// Implements cut and copy of tokens.
  ///
  /// To support drag and drop and the Cut and Copy commands, your delegate must implement this method and return an NSItemProvider for the requested token. The field’s textPasteDelegate is responsible for implementing pasting of tokens. Your delegate can provide a plain text representation for pasting in other contexts, but should register a custom type identifier so it can recognize and reconstruct the token when pasted into the same field.
  ///
  /// This method will only be called if either of the field’s allowsCopyingTokens or allowsDeletingTokens properties is true.
  @available(swift, obsoleted: 3, renamed: "searchTextField(_:itemProviderForCopying:)")
  optional func searchTextField(_ searchTextField: UISearchTextField, itemProviderForCopyingToken token: UISearchToken) -> NSItemProvider
}

/// A protocol that refines UITextPasteItem to support pasting of tokens.
///
/// Paste items vended by UISearchTextField conform to this protocol.
protocol UISearchTextFieldPasteItem : UITextPasteItem {

  /// Transforms this paste item into a token at the end of the search text field’s token array.
  @available(iOS 13.0, *)
  func setSearchTokenResult(_ token: UISearchToken)
}
