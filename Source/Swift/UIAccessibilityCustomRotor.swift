@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIAccessibilityCustomRotor.Direction")
typealias UIAccessibilityCustomRotorDirection = UIAccessibilityCustomRotor.Direction
extension UIAccessibilityCustomRotor {
  enum Direction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    @available(iOS 10.0, *)
    case previous
    @available(iOS 10.0, *)
    @available(swift, obsoleted: 3, renamed: "previous")
    static var Previous: UIAccessibilityCustomRotor.Direction { get }
    @available(iOS 10.0, *)
    case next
    @available(iOS 10.0, *)
    @available(swift, obsoleted: 3, renamed: "next")
    static var Next: UIAccessibilityCustomRotor.Direction { get }
  }
  @available(iOS 11.0, *)
  enum SystemRotorType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIAccessibilityCustomRotor.SystemRotorType { get }
    case link
    @available(swift, obsoleted: 3, renamed: "link")
    static var Link: UIAccessibilityCustomRotor.SystemRotorType { get }
    case visitedLink
    @available(swift, obsoleted: 3, renamed: "visitedLink")
    static var VisitedLink: UIAccessibilityCustomRotor.SystemRotorType { get }
    case heading
    @available(swift, obsoleted: 3, renamed: "heading")
    static var Heading: UIAccessibilityCustomRotor.SystemRotorType { get }
    case headingLevel1
    @available(swift, obsoleted: 3, renamed: "headingLevel1")
    static var HeadingLevel1: UIAccessibilityCustomRotor.SystemRotorType { get }
    case headingLevel2
    @available(swift, obsoleted: 3, renamed: "headingLevel2")
    static var HeadingLevel2: UIAccessibilityCustomRotor.SystemRotorType { get }
    case headingLevel3
    @available(swift, obsoleted: 3, renamed: "headingLevel3")
    static var HeadingLevel3: UIAccessibilityCustomRotor.SystemRotorType { get }
    case headingLevel4
    @available(swift, obsoleted: 3, renamed: "headingLevel4")
    static var HeadingLevel4: UIAccessibilityCustomRotor.SystemRotorType { get }
    case headingLevel5
    @available(swift, obsoleted: 3, renamed: "headingLevel5")
    static var HeadingLevel5: UIAccessibilityCustomRotor.SystemRotorType { get }
    case headingLevel6
    @available(swift, obsoleted: 3, renamed: "headingLevel6")
    static var HeadingLevel6: UIAccessibilityCustomRotor.SystemRotorType { get }
    case boldText
    @available(swift, obsoleted: 3, renamed: "boldText")
    static var BoldText: UIAccessibilityCustomRotor.SystemRotorType { get }
    case italicText
    @available(swift, obsoleted: 3, renamed: "italicText")
    static var ItalicText: UIAccessibilityCustomRotor.SystemRotorType { get }
    case underlineText
    @available(swift, obsoleted: 3, renamed: "underlineText")
    static var UnderlineText: UIAccessibilityCustomRotor.SystemRotorType { get }
    case misspelledWord
    @available(swift, obsoleted: 3, renamed: "misspelledWord")
    static var MisspelledWord: UIAccessibilityCustomRotor.SystemRotorType { get }
    case image
    @available(swift, obsoleted: 3, renamed: "image")
    static var Image: UIAccessibilityCustomRotor.SystemRotorType { get }
    case textField
    @available(swift, obsoleted: 3, renamed: "textField")
    static var TextField: UIAccessibilityCustomRotor.SystemRotorType { get }
    case table
    @available(swift, obsoleted: 3, renamed: "table")
    static var Table: UIAccessibilityCustomRotor.SystemRotorType { get }
    case list
    @available(swift, obsoleted: 3, renamed: "list")
    static var List: UIAccessibilityCustomRotor.SystemRotorType { get }
    case landmark
    @available(swift, obsoleted: 3, renamed: "landmark")
    static var Landmark: UIAccessibilityCustomRotor.SystemRotorType { get }
  }
  typealias Search = (UIAccessibilityCustomRotorSearchPredicate) -> UIAccessibilityCustomRotorItemResult?
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAccessibilityCustomRotor.SystemRotorType")
typealias UIAccessibilityCustomSystemRotorType = UIAccessibilityCustomRotor.SystemRotorType
@available(swift, obsoleted: 4.2, renamed: "UIAccessibilityCustomRotor.Search")
typealias UIAccessibilityCustomRotorSearch = UIAccessibilityCustomRotor.Search
extension NSObject {
  @available(iOS 10.0, *)
  var accessibilityCustomRotors: [UIAccessibilityCustomRotor]?
  class func accessibilityCustomRotors() -> [UIAccessibilityCustomRotor]?
  class func setAccessibilityCustomRotors(_ accessibilityCustomRotors: [UIAccessibilityCustomRotor]?)
}
@available(iOS 10.0, *)
class UIAccessibilityCustomRotorSearchPredicate : NSObject {
  var currentItem: UIAccessibilityCustomRotorItemResult
  var searchDirection: UIAccessibilityCustomRotor.Direction
  init()
}
@available(iOS 10.0, *)
class UIAccessibilityCustomRotor : NSObject {
  init(name: String, itemSearch itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  @available(swift, obsoleted: 3, renamed: "init(name:itemSearch:)")
  init(name: String, itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  @available(iOS 11.0, *)
  init(attributedName: NSAttributedString, itemSearch itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(attributedName:itemSearch:)")
  init(attributedName: NSAttributedString, itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  @available(iOS 11.0, *)
  init(systemType type: UIAccessibilityCustomRotor.SystemRotorType, itemSearch itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(systemType:itemSearch:)")
  init(systemType type: UIAccessibilityCustomRotor.SystemRotorType, itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  var name: String
  @available(iOS 11.0, *)
  @NSCopying var attributedName: NSAttributedString
  var itemSearchBlock: UIAccessibilityCustomRotor.Search
  @available(iOS 11.0, *)
  var systemRotorType: UIAccessibilityCustomRotor.SystemRotorType { get }
  init()
}
@available(iOS 10.0, *)
class UIAccessibilityCustomRotorItemResult : NSObject {
  init(targetElement: NSObjectProtocol, targetRange: UITextRange?)
  weak var targetElement: @sil_weak NSObjectProtocol?
  var targetRange: UITextRange?
  init()
}
