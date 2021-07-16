@_exported import Foundation


/// UIFocusDebugger provides a collection of runtime utilities for debugging issues related to focus interaction.
@available(iOS 11.0, *)
class UIFocusDebugger : NSObject {

  /// Outputs an overview of all supported debugging utilities and other relevant information.
  ///   - To use in Swift, enter `po UIFocusDebugger.help()` when paused in lldb.
  ///   - To use in Objective-C, enter `po [UIFocusDebugger help]` when paused in lldb.
  class func help() -> UIFocusDebuggerOutput

  /// Outputs information for the currently focused item.
  ///   - To use in Swift, enter `po UIFocusDebugger.status()` when paused in lldb.
  ///   - To use in Objective-C, enter `po [UIFocusDebugger status]` when paused in lldb.
  class func status() -> UIFocusDebuggerOutput

  /// Outputs a diagnosis of the specified item's focusability, including any known issues that may be preventing focusability.
  ///   - To use in Swift, enter `po UIFocusDebugger.checkFocusability(for: <item reference>)` when paused in lldb.
  ///   - To use in Objective-C, enter `po [UIFocusDebugger checkFocusabilityForItem:<item reference>]` when paused in lldb.
  class func checkFocusability(for item: UIFocusItem) -> UIFocusDebuggerOutput

  /// Outputs a diagnosis of the specified item's focusability, including any known issues that may be preventing focusability.
  ///   - To use in Swift, enter `po UIFocusDebugger.checkFocusability(for: <item reference>)` when paused in lldb.
  ///   - To use in Objective-C, enter `po [UIFocusDebugger checkFocusabilityForItem:<item reference>]` when paused in lldb.
  @available(swift, obsoleted: 3, renamed: "checkFocusability(for:)")
  class func checkFocusabilityForItem(_ item: UIFocusItem) -> UIFocusDebuggerOutput

  /// Simulates a fake focus update requested by the specified environment (e.g. `[environment setNeedsFocusUpdate]`), outlining each step of the process for determining the next focused item.
  ///   - To use in Swift, enter `po UIFocusDebugger.simulateFocusUpdateRequest(from: <environment reference>)` when paused in lldb.
  ///   - To use in Objective-C, enter `po [UIFocusDebugger simulateFocusUpdateRequestFromEnvironment:<environment reference>]` when paused in lldb.
  class func simulateFocusUpdateRequest(from environment: UIFocusEnvironment) -> UIFocusDebuggerOutput

  /// Simulates a fake focus update requested by the specified environment (e.g. `[environment setNeedsFocusUpdate]`), outlining each step of the process for determining the next focused item.
  ///   - To use in Swift, enter `po UIFocusDebugger.simulateFocusUpdateRequest(from: <environment reference>)` when paused in lldb.
  ///   - To use in Objective-C, enter `po [UIFocusDebugger simulateFocusUpdateRequestFromEnvironment:<environment reference>]` when paused in lldb.
  @available(swift, obsoleted: 3, renamed: "simulateFocusUpdateRequest(from:)")
  class func simulateFocusUpdateRequestFromEnvironment(_ environment: UIFocusEnvironment) -> UIFocusDebuggerOutput
  init()
}
@available(iOS 11.0, *)
protocol UIFocusDebuggerOutput : NSObjectProtocol {
}
