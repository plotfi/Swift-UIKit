@_exported import Foundation


/// UIFocusSystem instances manage focus state within a part of the user interface. They are in charge of tracking the current focused item, as well as processing focus updates.
@available(iOS 11.0, *)
class UIFocusSystem : NSObject {

  /// The currently focused item in this focus system.
  @available(iOS 12.0, *)
  weak var focusedItem: @sil_weak UIFocusItem? { get }
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  init()

  /// Return the focus system that the provided environment is contained in. Returns nil if focus
  /// interaction is not supported, or if the environment is not associated with any focus system.
  @available(iOS 12.0, *)
  /*not inherited*/ init?(for environment: UIFocusEnvironment)

  /// Return the focus system that the provided environment is contained in. Returns nil if focus
  /// interaction is not supported, or if the environment is not associated with any focus system.
  @available(iOS 12.0, *)
  @available(swift, obsoleted: 3, renamed: "init(for:)")
  /*not inherited*/ init?(forEnvironment environment: UIFocusEnvironment)

  /// Return the focus system that the provided environment is contained in. Returns nil if focus
  /// interaction is not supported, or if the environment is not associated with any focus system.
  @available(iOS 12.0, *)
  @available(*, unavailable, renamed: "init(for:)", message: "Not available in Swift")
  class func focusSystemForEnvironment(_ environment: UIFocusEnvironment) -> UIFocusSystem?

  /// Requests a focus update to the specified environment. If accepted, the focus update will happen
  /// in the next run loop cycle.
  @available(iOS 12.0, *)
  func requestFocusUpdate(to environment: UIFocusEnvironment)

  /// Requests a focus update to the specified environment. If accepted, the focus update will happen
  /// in the next run loop cycle.
  @available(iOS 12.0, *)
  @available(swift, obsoleted: 3, renamed: "requestFocusUpdate(to:)")
  func requestFocusUpdateToEnvironment(_ environment: UIFocusEnvironment)

  /// Forces any pending focus update to be committed immediately.
  @available(iOS 12.0, *)
  func updateFocusIfNeeded()

  /// Returns true if `environment` is an ancestor of `otherEnvironment`, or false if otherwise.
  @available(*, unavailable, message: "Not available in Swift")
  class func environment(_ environment: UIFocusEnvironment, contains otherEnvironment: UIFocusEnvironment) -> Bool

  /// Returns true if `environment` is an ancestor of `otherEnvironment`, or false if otherwise.
  @available(swift, obsoleted: 3, renamed: "environment(_:contains:)")
  @available(*, unavailable, message: "Not available in Swift")
  class func environment(_ environment: UIFocusEnvironment, containsEnvironment otherEnvironment: UIFocusEnvironment) -> Bool

  /// Registers a sound file for a given identifier.
  @available(iOS, unavailable)
  class func register(_ soundFileURL: URL, forSoundIdentifier identifier: UIFocusSoundIdentifier)

  /// Registers a sound file for a given identifier.
  @available(swift, obsoleted: 3, renamed: "register(_:forSoundIdentifier:)")
  @available(iOS, unavailable)
  class func registerURL(_ soundFileURL: URL, forSoundIdentifier identifier: UIFocusSoundIdentifier)
}
