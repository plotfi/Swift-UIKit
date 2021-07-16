@_exported import Foundation

@available(iOS 13.0, *)
class UIScene : UIResponder {
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  convenience init()
  init(session: UISceneSession, connectionOptions: UIScene.ConnectionOptions)
  var session: UISceneSession { get }
  var delegate: UISceneDelegate?
  var activationState: UIScene.ActivationState { get }
  func open(_ url: URL, options: UIScene.OpenExternalURLOptions?, completionHandler completion: ((Bool) -> Void)? = nil)
  func open(_ url: URL, options: UIScene.OpenExternalURLOptions?) async -> Bool
  @available(swift, obsoleted: 3, renamed: "open(_:options:completionHandler:)")
  func openURL(_ url: URL, options: UIScene.OpenExternalURLOptions?, completionHandler completion: ((Bool) -> Void)? = nil)
  var title: String!
  var activationConditions: UISceneActivationConditions
}
@available(iOS 13.0, *)
protocol UISceneDelegate : NSObjectProtocol {
  optional func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
  @available(swift, obsoleted: 3, renamed: "scene(_:willConnectTo:options:)")
  optional func scene(_ scene: UIScene, willConnectToSession session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
  optional func sceneDidDisconnect(_ scene: UIScene)
  optional func sceneDidBecomeActive(_ scene: UIScene)
  optional func sceneWillResignActive(_ scene: UIScene)
  optional func sceneWillEnterForeground(_ scene: UIScene)
  optional func sceneDidEnterBackground(_ scene: UIScene)
  optional func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>)
  optional func stateRestorationActivity(for scene: UIScene) -> NSUserActivity?
  @available(swift, obsoleted: 3, renamed: "stateRestorationActivity(for:)")
  optional func stateRestorationActivityForScene(_ scene: UIScene) -> NSUserActivity?
  optional func scene(_ scene: UIScene, willContinueUserActivityWithType userActivityType: String)
  optional func scene(_ scene: UIScene, continue userActivity: NSUserActivity)
  @available(swift, obsoleted: 3, renamed: "scene(_:continue:)")
  optional func scene(_ scene: UIScene, continueUserActivity userActivity: NSUserActivity)
  optional func scene(_ scene: UIScene, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  optional func scene(_ scene: UIScene, didUpdate userActivity: NSUserActivity)
  @available(swift, obsoleted: 3, renamed: "scene(_:didUpdate:)")
  optional func scene(_ scene: UIScene, didUpdateUserActivity userActivity: NSUserActivity)
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.willConnectNotification")
let UISceneWillConnectNotification: NSNotification.Name
extension UIScene {
  @available(iOS 13.0, *)
  class let willConnectNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let didDisconnectNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let didActivateNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let willDeactivateNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let willEnterForegroundNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let didEnterBackgroundNotification: NSNotification.Name
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.didDisconnectNotification")
let UISceneDidDisconnectNotification: NSNotification.Name
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.didActivateNotification")
let UISceneDidActivateNotification: NSNotification.Name
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.willDeactivateNotification")
let UISceneWillDeactivateNotification: NSNotification.Name
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.willEnterForegroundNotification")
let UISceneWillEnterForegroundNotification: NSNotification.Name
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.didEnterBackgroundNotification")
let UISceneDidEnterBackgroundNotification: NSNotification.Name
