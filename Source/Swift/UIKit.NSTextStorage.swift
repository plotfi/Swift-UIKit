@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "NSTextStorage.EditActions")
typealias NSTextStorageEditActions = NSTextStorage.EditActions
extension NSTextStorage {
  @available(iOS 7.0, *)
  struct EditActions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = NSTextStorage.EditActions
    typealias ArrayLiteralElement = NSTextStorage.EditActions
    static var editedAttributes: NSTextStorage.EditActions { get }
    @available(swift, obsoleted: 3, renamed: "editedAttributes")
    static var EditedAttributes: NSTextStorage.EditActions { get }
    static var editedCharacters: NSTextStorage.EditActions { get }
    @available(swift, obsoleted: 3, renamed: "editedCharacters")
    static var EditedCharacters: NSTextStorage.EditActions { get }
  }

  /**** Notifications ****/
  @available(iOS 7.0, *)
  class let willProcessEditingNotification: NSNotification.Name
  @available(iOS 7.0, *)
  class let didProcessEditingNotification: NSNotification.Name
}
@available(iOS 7.0, *)
class NSTextStorage : NSMutableAttributedString, NSSecureCoding {

  /**************************** Layout manager ****************************/
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(_ aLayoutManager: NSLayoutManager)
  func removeLayoutManager(_ aLayoutManager: NSLayoutManager)

  /**************************** Pending edit info ****************************/
  var editedMask: NSTextStorage.EditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }

  /**************************** Delegate ****************************/
  weak var delegate: @sil_weak NSTextStorageDelegate?

  /**************************** Edit management ****************************/
  func edited(_ editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()

  /**************************** Attribute fixing ****************************/
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributes(in range: NSRange)
  @available(swift, obsoleted: 3, renamed: "invalidateAttributes(in:)")
  func invalidateAttributesInRange(_ range: NSRange)
  func ensureAttributesAreFixed(in range: NSRange)
  @available(swift, obsoleted: 3, renamed: "ensureAttributesAreFixed(in:)")
  func ensureAttributesAreFixedInRange(_ range: NSRange)
  init()
  init?(coder: NSCoder)
  @available(iOS 9.0, *)
  init(url: URL, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  @available(iOS 7.0, *)
  init(data: Data, options: [NSAttributedString.DocumentReadingOptionKey : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  @available(iOS, introduced: 7.0, deprecated: 9.0)
  init(fileURL url: URL, options: [AnyHashable : Any] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) throws
  init(string str: String)
  init(string str: String, attributes attrs: [NSAttributedString.Key : Any]? = nil)
  init(attributedString attrStr: NSAttributedString)
}

/****  NSTextStorage delegate methods ****/
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func textStorage(_ textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(iOS 7.0, *)
  optional func textStorage(_ textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int)
}

/**** Notifications ****/
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "NSTextStorage.willProcessEditingNotification")
let NSTextStorageWillProcessEditingNotification: NSNotification.Name
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "NSTextStorage.didProcessEditingNotification")
let NSTextStorageDidProcessEditingNotification: NSNotification.Name
