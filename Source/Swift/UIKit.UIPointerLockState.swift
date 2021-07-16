@_exported import Foundation

@available(iOS 14.0, *)
class UIPointerLockState : NSObject {
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self

  /**
   * @abstract The status of the pointer lock for this scene as determined by the system.
   * The preferred pointer lock value specified by a view controller is only a request, which may or may not be honored.
   * This property is key-value observable and UIPointerLockState.didChangeNotification is posted when it changes.
   */
  var isLocked: Bool { get }

  /**
   * @abstract The status of the pointer lock for this scene as determined by the system.
   * The preferred pointer lock value specified by a view controller is only a request, which may or may not be honored.
   * This property is key-value observable and UIPointerLockState.didChangeNotification is posted when it changes.
   */
  @available(swift, obsoleted: 3, renamed: "isLocked")
  var locked: Bool { get }
}
extension UIScene {
  @available(iOS 14.0, *)
  var pointerLockState: UIPointerLockState? { get }
}

/**
 * @abstract A notification that is posted when UIPointerLockState.locked changes values for a scene.
 * It contains the related UIScene in the user info dictionary of the notification.
 */
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPointerLockState.didChangeNotification")
let UIPointerLockStateDidChangeNotification: NSNotification.Name
extension UIPointerLockState {

  /**
   * @abstract A notification that is posted when UIPointerLockState.locked changes values for a scene.
   * It contains the related UIScene in the user info dictionary of the notification.
   */
  @available(iOS 14.0, *)
  class let didChangeNotification: NSNotification.Name
  @available(iOS 14.0, *)
  class let sceneUserInfoKey: String
}
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPointerLockState.sceneUserInfoKey")
let UIPointerLockStateSceneUserInfoKey: String
