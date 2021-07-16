@_exported import Foundation

@available(iOS 14.0, *)
struct UIConfigurationStateCustomKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
@available(iOS 14.0, *)
protocol __UIConfigurationState : NSCopying, NSSecureCoding, NSObjectProtocol {

  /// Returns a new instance with the specified trait collection.
  init(traitCollection: UITraitCollection)
  var traitCollection: UITraitCollection { get set }

  /// Returns the custom state for the specified key.
  func customState(forKey key: UIConfigurationStateCustomKey) -> Any?

  /// Returns the custom state for the specified key.
  @available(swift, obsoleted: 3, renamed: "customState(forKey:)")
  func customStateForKey(_ key: UIConfigurationStateCustomKey) -> Any?

  /// Sets the custom state for the specified key.
  func setCustom(_ customState: Any?, forKey key: UIConfigurationStateCustomKey)

  /// Sets the custom state for the specified key.
  @available(swift, obsoleted: 3, renamed: "setCustom(_:forKey:)")
  func setCustomState(_ customState: Any?, forKey key: UIConfigurationStateCustomKey)
  subscript(key: UIConfigurationStateCustomKey) -> Any? { get set }
  @available(*, unavailable, message: "use subscripting")
  func objectForKeyedSubscript(_ key: UIConfigurationStateCustomKey) -> Any?
  @available(*, unavailable, message: "use subscripting")
  func setObject(_ obj: Any?, forKeyedSubscript key: UIConfigurationStateCustomKey)
}
