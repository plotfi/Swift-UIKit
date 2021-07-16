@_exported import Foundation

@available(iOS 7.0, *)
struct UIKeyModifierFlags : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  typealias RawValue = Int
  typealias Element = UIKeyModifierFlags
  typealias ArrayLiteralElement = UIKeyModifierFlags
  static var alphaShift: UIKeyModifierFlags { get }
  @available(swift, obsoleted: 3, renamed: "alphaShift")
  static var AlphaShift: UIKeyModifierFlags { get }
  static var shift: UIKeyModifierFlags { get }
  @available(swift, obsoleted: 3, renamed: "shift")
  static var Shift: UIKeyModifierFlags { get }
  static var control: UIKeyModifierFlags { get }
  @available(swift, obsoleted: 3, renamed: "control")
  static var Control: UIKeyModifierFlags { get }
  static var alternate: UIKeyModifierFlags { get }
  @available(swift, obsoleted: 3, renamed: "alternate")
  static var Alternate: UIKeyModifierFlags { get }
  static var command: UIKeyModifierFlags { get }
  @available(swift, obsoleted: 3, renamed: "command")
  static var Command: UIKeyModifierFlags { get }
  static var numericPad: UIKeyModifierFlags { get }
  @available(swift, obsoleted: 3, renamed: "numericPad")
  static var NumericPad: UIKeyModifierFlags { get }
}

/// Represents an alternate action to take for a command.
///
/// Two alternates are equal iff their modifierFlags are equal.
@available(iOS 13.0, *)
class UICommandAlternate : NSObject, NSCopying, NSSecureCoding {

  /// Short display title.
  var title: String { get }

  /// Action to take on choosing this command alternate.
  var action: Selector { get }

  /// Bitmask of modifier flags to choose this command alternate.
  var modifierFlags: UIKeyModifierFlags { get }

  /// Initialize an alternate action to take for a command.
  ///
  /// @param title Short display title. This should be localized.
  /// @param action Action to take on choosing this command alternate.
  /// @param modifierFlags Bitmask of modifier flags to choose this command alternate.
  /// @return A new command alternate.
  convenience init(title: String, action: Selector, modifierFlags: UIKeyModifierFlags)

  /// Initialize an alternate action to take for a command.
  ///
  /// @param title Short display title. This should be localized.
  /// @param action Action to take on choosing this command alternate.
  /// @param modifierFlags Bitmask of modifier flags to choose this command alternate.
  /// @return A new command alternate.
  @available(*, unavailable, renamed: "init(title:action:modifierFlags:)", message: "Not available in Swift")
  class func alternateWithTitle(_ title: String, action: Selector, modifierFlags: UIKeyModifierFlags) -> Self
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  convenience init()
  init?(coder: NSCoder)
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
}

/// Represents an action to take.
@available(iOS 13.0, *)
class UICommand : UIMenuElement {

  /// Short display title.
  var title: String

  /// Image that can appear next to this command
  @NSCopying var image: UIImage?

  /// Elaborated title, if any.
  var discoverabilityTitle: String?

  /// Action to take on choosing this command.
  var action: Selector { get }

  /// Property list object to distinguish commands, if needed.
  var propertyList: Any? { get }

  /// Command attributes.
  var attributes: UIMenuElement.Attributes

  /// State that can appear next to the command.
  var state: UIMenuElement.State

  /// Alternates that differ in modifier flags, if any.
  var alternates: [UICommandAlternate] { get }

  /// Initializes a keyless command.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @return A new keyless command.
  @available(*, unavailable, message: "Use init(title:image:action:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  convenience init(title: String, image: UIImage?, action: Selector, propertyList: Any?)

  /// Initializes a keyless command.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @return A new keyless command.
  @available(*, unavailable, renamed: "init(title:image:action:propertyList:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:action:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  class func commandWithTitle(_ title: String, image: UIImage?, action: Selector, propertyList: Any?) -> Self

  /// Initializes a keyless command with alternates.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @param alternates Alternates that differ in modifier flags.
  /// @return A new keyless command with alternates.
  @available(*, unavailable, message: "Use init(title:image:action:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  convenience init(title: String, image: UIImage?, action: Selector, propertyList: Any?, alternates: [UICommandAlternate])

  /// Initializes a keyless command with alternates.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @param alternates Alternates that differ in modifier flags.
  /// @return A new keyless command with alternates.
  @available(*, unavailable, renamed: "init(title:image:action:propertyList:alternates:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:action:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  class func commandWithTitle(_ title: String, image: UIImage?, action: Selector, propertyList: Any?, alternates: [UICommandAlternate]) -> Self
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  convenience init()
  init?(coder: NSCoder)
}

@available(iOS 13.0, *)
extension UICommand {
  /// Initializes a keyless command with extra properties.
  ///
  /// - Parameters:
  ///   - title: Short display title. This should be localized.
  ///   - image: Image that can appear next to the command, if any.
  ///   - action: Action to execute on choosing this command.
  ///   - propertyList: Property list object to distinguish commands, if needed.
  ///   - alternates: Alternates that differ in modifier flags, if needed.
  ///   - discoverabilityTitle: Elaborated title, if any.
  ///   - attributes: Command attributes.
  ///   - state: State that can appear next to the command.
  convenience init(title: String = "", image: UIImage? = nil, action: Selector, propertyList: Any? = nil, alternates: [UICommandAlternate] = [], discoverabilityTitle: String? = nil, attributes: UIMenuElement.Attributes = [], state: UIMenuElement.State = .off)
}
@available(iOS 13.0, *)
let UICommandTagShare: String
