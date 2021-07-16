@_exported import Foundation

@available(iOS 7.0, *)
class UIKeyCommand : UICommand {
  init()
  init?(coder: NSCoder)

  /// Short display title.
  @available(iOS 13.0, *)
  var title: String

  /// Image that can appear next to this command.
  @available(iOS 13.0, *)
  @NSCopying var image: UIImage?

  /// Elaborated title, if any.
  @available(iOS 9.0, *)
  var discoverabilityTitle: String?

  /// Action to take on choosing this command.
  var action: Selector? { get }
  var input: String? { get }
  var modifierFlags: UIKeyModifierFlags { get }

  /// Property list object to distinguish commands, if needed.
  @available(iOS 13.0, *)
  var propertyList: Any? { get }

  /// Command attributes.
  @available(iOS 13.0, *)
  var attributes: UIMenuElement.Attributes

  /// State that can appear next to this command.
  @available(iOS 13.0, *)
  var state: UIMenuElement.State

  /// Alternates that differ in modifier flags, if any.
  @available(iOS 13.0, *)
  var alternates: [UICommandAlternate] { get }

  /// Initializes a key command.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param input Keys that must be pressed to choose this command.
  /// @param modifierFlags Bit mask of key modifier flags to choose this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @return A new key command.
  @available(*, unavailable, message: "Use init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  convenience init(title: String, image: UIImage?, action: Selector, input: String, modifierFlags: UIKeyModifierFlags, propertyList: Any?)

  /// Initializes a key command.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param input Keys that must be pressed to choose this command.
  /// @param modifierFlags Bit mask of key modifier flags to choose this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @return A new key command.
  @available(*, unavailable, renamed: "init(title:image:action:input:modifierFlags:propertyList:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  class func commandWithTitle(_ title: String, image: UIImage?, action: Selector, input: String, modifierFlags: UIKeyModifierFlags, propertyList: Any?) -> Self

  /// Initializes a key command with alternates.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param input Keys that must be pressed to choose this command.
  /// @param modifierFlags Bit mask of key modifier flags to choose this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @param alternates Alternates that differ in modifier flags.
  /// @return A new key command.
  @available(*, unavailable, message: "Use init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  convenience init(title: String, image: UIImage?, action: Selector, input: String, modifierFlags: UIKeyModifierFlags, propertyList: Any?, alternates: [UICommandAlternate])

  /// Initializes a key command with alternates.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param input Keys that must be pressed to choose this command.
  /// @param modifierFlags Bit mask of key modifier flags to choose this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @param alternates Alternates that differ in modifier flags.
  /// @return A new key command.
  @available(*, unavailable, renamed: "init(title:image:action:input:modifierFlags:propertyList:alternates:)", message: "Not available in Swift")
  @available(*, unavailable, message: "Use init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  class func commandWithTitle(_ title: String, image: UIImage?, action: Selector, input: String, modifierFlags: UIKeyModifierFlags, propertyList: Any?, alternates: [UICommandAlternate]) -> Self
  convenience init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
  @available(*, unavailable, renamed: "init(input:modifierFlags:action:)", message: "Not available in Swift")
  class func keyCommandWithInput(_ input: String, modifierFlags: UIKeyModifierFlags, action: Selector) -> Self
  @available(iOS, introduced: 9.0, deprecated: 13.0)
  convenience init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
  @available(*, unavailable, renamed: "init(input:modifierFlags:action:discoverabilityTitle:)", message: "Not available in Swift")
  @available(iOS, introduced: 9.0, deprecated: 13.0)
  class func keyCommandWithInput(_ input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String) -> Self
  @available(*, unavailable)
  convenience init(title: String, image: UIImage?, action: Selector, propertyList: Any?)
  @available(*, unavailable, renamed: "init(title:image:action:propertyList:)", message: "Not available in Swift")
  @available(*, unavailable)
  class func commandWithTitle(_ title: String, image: UIImage?, action: Selector, propertyList: Any?) -> Self
  @available(*, unavailable)
  convenience init(title: String, image: UIImage?, action: Selector, propertyList: Any?, alternates: [UICommandAlternate])
  @available(*, unavailable, renamed: "init(title:image:action:propertyList:alternates:)", message: "Not available in Swift")
  @available(*, unavailable)
  class func commandWithTitle(_ title: String, image: UIImage?, action: Selector, propertyList: Any?, alternates: [UICommandAlternate]) -> Self

  /// Initializes a keyless command.
  ///
  /// @param title Short display title. This should be localized.
  /// @param image Image that can appear next to this command, if needed.
  /// @param action Action to take on choosing this command.
  /// @param propertyList Property list object to distinguish commands, if needed.
  /// @return A new keyless command.
  @available(*, unavailable, message: "Use init(title:image:action:propertyList:alternates:discoverabilityTitle:attributes:state:) instead.")
  convenience init(title: String, image: UIImage?, action: Selector, propertyList: Any?)

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
}

@available(iOS 13.0, *)
extension UIKeyCommand {
  /// Initializes a key command with extra properties.
  ///
  /// - Parameters:
  ///   - title: Short display title. This should be localized.
  ///   - action: Action to execute on choosing this command.
  ///   - input: Keys that must be pressed to choose this command.
  ///   - modifierFlags: Bit mask of key modifier flags to choose this command.
  ///   - propertyList: Property list object to distinguish commands, if needed.
  ///   - alternates: Alternates that differ in modifier flags, if needed.
  ///   - image: Image that can appear next to the command, if any.
  ///   - discoverabilityTitle: Elaborated title, if any.
  ///   - isEnabled: Whether to enable or disable the command.
  ///   - state: State that can appear next to the command.
  convenience init(title: String = "", image: UIImage? = nil, action: Selector, input: String, modifierFlags: UIKeyModifierFlags = [], propertyList: Any? = nil, alternates: [UICommandAlternate] = [], discoverabilityTitle: String? = nil, attributes: UIMenuElement.Attributes = [], state: UIMenuElement.State = .off)
}
