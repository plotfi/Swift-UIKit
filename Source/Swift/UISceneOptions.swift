@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.ConnectionOptions")
typealias UISceneConnectionOptions = UIScene.ConnectionOptions
extension UIScene {
  @available(iOS 13.0, *)
  class ConnectionOptions : NSObject {
    @available(*, unavailable)
    class func new() -> Self
    @available(*, unavailable)
    init()
    var urlContexts: Set<UIOpenURLContext> { get }
    @available(swift, obsoleted: 3, renamed: "urlContexts")
    var URLContexts: Set<UIOpenURLContext> { get }
    var sourceApplication: String? { get }
    var handoffUserActivityType: String? { get }
    var userActivities: Set<NSUserActivity> { get }
    var notificationResponse: UNNotificationResponse? { get }
    var shortcutItem: UIApplicationShortcutItem? { get }
  }
  @available(iOS 13.0, *)
  class ActivationRequestOptions : NSObject {
    var requestingScene: UIScene?
    @available(iOS, unavailable)
    var collectionJoinBehavior: UISceneCollectionJoinBehavior
    init()
  }
  @available(iOS 13.0, *)
  class OpenExternalURLOptions : NSObject {
    var universalLinksOnly: Bool
    @available(iOS 14.5, *)
    @NSCopying var eventAttribution: UIEventAttribution?
    init()
  }
  @available(iOS 13.0, *)
  class OpenURLOptions : NSObject {
    @available(*, unavailable)
    class func new() -> Self
    @available(*, unavailable)
    init()
    var sourceApplication: String? { get }
    var annotation: Any? { get }
    var openInPlace: Bool { get }
    @available(iOS 14.5, *)
    var eventAttribution: UIEventAttribution? { get }
  }
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.OpenURLOptions")
typealias UISceneOpenURLOptions = UIScene.OpenURLOptions
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.OpenExternalURLOptions")
typealias UISceneOpenExternalURLOptions = UIScene.OpenExternalURLOptions
@available(iOS, unavailable)
enum UISceneCollectionJoinBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case automatic
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: UISceneCollectionJoinBehavior { get }
  case preferred
  @available(swift, obsoleted: 3, renamed: "preferred")
  static var Preferred: UISceneCollectionJoinBehavior { get }
  case disallowed
  @available(swift, obsoleted: 3, renamed: "disallowed")
  static var Disallowed: UISceneCollectionJoinBehavior { get }
  case preferredWithoutActivating
  @available(swift, obsoleted: 3, renamed: "preferredWithoutActivating")
  static var PreferredWithoutActivating: UISceneCollectionJoinBehavior { get }
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIScene.ActivationRequestOptions")
typealias UISceneActivationRequestOptions = UIScene.ActivationRequestOptions
@available(iOS 13.0, *)
class UISceneDestructionRequestOptions : NSObject {
  init()
}
