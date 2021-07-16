@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenuElement.State")
typealias UIMenuElementState = UIMenuElement.State
extension UIMenuElement {
  @available(iOS 13.0, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case off
    @available(swift, obsoleted: 3, renamed: "off")
    static var Off: UIMenuElement.State { get }
    case on
    @available(swift, obsoleted: 3, renamed: "on")
    static var On: UIMenuElement.State { get }
    case mixed
    @available(swift, obsoleted: 3, renamed: "mixed")
    static var Mixed: UIMenuElement.State { get }
  }
  @available(iOS 13.0, *)
  struct Attributes : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIMenuElement.Attributes
    typealias ArrayLiteralElement = UIMenuElement.Attributes
    static var disabled: UIMenuElement.Attributes { get }
    @available(swift, obsoleted: 3, renamed: "disabled")
    static var Disabled: UIMenuElement.Attributes { get }
    static var destructive: UIMenuElement.Attributes { get }
    @available(swift, obsoleted: 3, renamed: "destructive")
    static var Destructive: UIMenuElement.Attributes { get }
    static var hidden: UIMenuElement.Attributes { get }
    @available(swift, obsoleted: 3, renamed: "hidden")
    static var Hidden: UIMenuElement.Attributes { get }
  }
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIMenuElement.Attributes")
typealias UIMenuElementAttributes = UIMenuElement.Attributes
@available(iOS 13.0, *)
class UIMenuElement : NSObject, NSCopying, NSSecureCoding {

  /// The element's title.
  var title: String { get }

  /// Image to be displayed alongside the element's title.
  var image: UIImage? { get }
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
}
