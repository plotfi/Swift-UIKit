@_exported import Foundation

@available(iOS 14.0, *)
class __UIViewConfigurationState : NSObject, __UIConfigurationState {

  /// Returns a new instance with the specified trait collection.
  init(traitCollection: UITraitCollection)
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var traitCollection: UITraitCollection
  var isDisabled: Bool
  @available(swift, obsoleted: 3, renamed: "isDisabled")
  var disabled: Bool
  var isHighlighted: Bool
  @available(swift, obsoleted: 3, renamed: "isHighlighted")
  var highlighted: Bool
  var isSelected: Bool
  @available(swift, obsoleted: 3, renamed: "isSelected")
  var selected: Bool
  var isFocused: Bool
  @available(swift, obsoleted: 3, renamed: "isFocused")
  var focused: Bool
  @available(iOS 14.0, *)
  class var supportsSecureCoding: Bool { get }

  /// Returns the custom state for the specified key.
  @available(iOS 14.0, *)
  func customState(forKey key: UIConfigurationStateCustomKey) -> Any?

  /// Sets the custom state for the specified key.
  @available(iOS 14.0, *)
  func setCustom(_ customState: Any?, forKey key: UIConfigurationStateCustomKey)
  @available(*, unavailable, message: "use subscripting")
  func objectForKeyedSubscript(_ key: UIConfigurationStateCustomKey) -> Any?
  @available(iOS 14.0, *)
  subscript(key: UIConfigurationStateCustomKey) -> Any?
  @available(iOS 14.0, *)
  func setObject(_ obj: Any?, forKeyedSubscript key: UIConfigurationStateCustomKey)
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 14.0, *)
  func encode(with coder: NSCoder)
}
