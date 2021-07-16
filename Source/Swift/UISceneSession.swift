@_exported import Foundation

@available(iOS 13.0, *)
class UISceneConfiguration : NSObject, NSCopying, NSSecureCoding {
  @available(*, unavailable, message: "superseded by import of -[UISceneConfiguration initWithName:sessionRole:]")
  convenience init(name: String?, sessionRole: UISceneSession.Role)
  @available(*, unavailable, renamed: "init(name:sessionRole:)", message: "Not available in Swift")
  class func configurationWithName(_ name: String?, sessionRole: UISceneSession.Role) -> Self
  init(name: String?, sessionRole: UISceneSession.Role)
  var name: String? { get }
  var role: UISceneSession.Role { get }
  var sceneClass: AnyClass?
  var delegateClass: AnyClass?
  var storyboard: UIStoryboard?
  convenience init()
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
@available(iOS 13.0, *)
class UISceneSession : NSObject, NSSecureCoding {
  @available(*, unavailable)
  class func new() -> Self
  @available(*, unavailable)
  init()
  var scene: UIScene? { get }
  var role: UISceneSession.Role { get }
  @NSCopying var configuration: UISceneConfiguration { get }
  var persistentIdentifier: String { get }
  var stateRestorationActivity: NSUserActivity?
  var userInfo: [String : Any]?
  @available(iOS 13.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 13.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
