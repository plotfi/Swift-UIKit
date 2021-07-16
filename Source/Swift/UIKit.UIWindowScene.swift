@_exported import Foundation

@available(iOS 13.0, *)
class UIWindowScene : UIScene {
  var screen: UIScreen { get }
  var interfaceOrientation: UIInterfaceOrientation { get }
  var coordinateSpace: UICoordinateSpace { get }
  var traitCollection: UITraitCollection { get }
  @available(iOS 13.0, *)
  var sizeRestrictions: UISceneSizeRestrictions? { get }
  var windows: [UIWindow] { get }
  @available(*, unavailable)
  convenience init()
  init(session: UISceneSession, connectionOptions: UIScene.ConnectionOptions)
}
@available(iOS 13.0, *)
protocol UIWindowSceneDelegate : UISceneDelegate {
  optional var window: UIWindow? { get set }
  optional func windowScene(_ windowScene: UIWindowScene, didUpdate previousCoordinateSpace: UICoordinateSpace, interfaceOrientation previousInterfaceOrientation: UIInterfaceOrientation, traitCollection previousTraitCollection: UITraitCollection)
  @available(swift, obsoleted: 3, renamed: "windowScene(_:didUpdate:interfaceOrientation:traitCollection:)")
  optional func windowScene(_ windowScene: UIWindowScene, didUpdateCoordinateSpace previousCoordinateSpace: UICoordinateSpace, interfaceOrientation previousInterfaceOrientation: UIInterfaceOrientation, traitCollection previousTraitCollection: UITraitCollection)
  optional func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void)
  optional func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem) async -> Bool
  @available(swift, obsoleted: 3, renamed: "windowScene(_:performActionFor:completionHandler:)")
  optional func windowScene(_ windowScene: UIWindowScene, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void)
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UISceneSession.Role.windowApplication")
let UIWindowSceneSessionRoleApplication: UISceneSession.Role
extension UISceneSession.Role {
  @available(iOS 13.0, *)
  static let windowApplication: UISceneSession.Role
  @available(iOS 13.0, *)
  static let windowExternalDisplay: UISceneSession.Role
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UISceneSession.Role.windowExternalDisplay")
let UIWindowSceneSessionRoleExternalDisplay: UISceneSession.Role
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIWindowScene.DismissalAnimation")
typealias UIWindowSceneDismissalAnimation = UIWindowScene.DismissalAnimation
extension UIWindowScene {
  @available(iOS 13.0, *)
  enum DismissalAnimation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case standard
    @available(swift, obsoleted: 3, renamed: "standard")
    static var Standard: UIWindowScene.DismissalAnimation { get }
    case commit
    @available(swift, obsoleted: 3, renamed: "commit")
    static var Commit: UIWindowScene.DismissalAnimation { get }
    case decline
    @available(swift, obsoleted: 3, renamed: "decline")
    static var Decline: UIWindowScene.DismissalAnimation { get }
  }
}
@available(iOS 13.0, *)
class UIWindowSceneDestructionRequestOptions : UISceneDestructionRequestOptions {
  var windowDismissalAnimation: UIWindowScene.DismissalAnimation
  init()
}
@available(iOS 13.0, *)
class UISceneSizeRestrictions : NSObject {
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  var minimumSize: CGSize
  var maximumSize: CGSize
}
