@_exported import Foundation


/// The command system to build or rebuild.
@available(iOS 13.0, *)
class UIMenuSystem : NSObject {

  /// The main command system.
  class var main: UIMenuSystem { get }

  /// The main command system.
  @available(swift, obsoleted: 3, renamed: "main")
  class var mainSystem: UIMenuSystem { get }

  /// The context command system.
  class var context: UIMenuSystem { get }

  /// The context command system.
  @available(swift, obsoleted: 3, renamed: "context")
  class var contextSystem: UIMenuSystem { get }
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  init()

  /// Trigger a rebuild of this system at a suitable time.
  func setNeedsRebuild()

  /// Trigger a revalidate of this system at a suitable time.
  func setNeedsRevalidate()
}
