@_exported import Foundation

@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNAuthorizationOptions")
struct UIUserNotificationType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIUserNotificationType
  typealias ArrayLiteralElement = UIUserNotificationType
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: UIUserNotificationType { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIUserNotificationType { get }
  static var badge: UIUserNotificationType { get }
  @available(swift, obsoleted: 3, renamed: "badge")
  static var Badge: UIUserNotificationType { get }
  static var sound: UIUserNotificationType { get }
  @available(swift, obsoleted: 3, renamed: "sound")
  static var Sound: UIUserNotificationType { get }
  static var alert: UIUserNotificationType { get }
  @available(swift, obsoleted: 3, renamed: "alert")
  static var Alert: UIUserNotificationType { get }
}
@available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationAction or UNTextInputNotificationAction")
enum UIUserNotificationActionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIUserNotificationActionBehavior { get }
  case textInput
  @available(swift, obsoleted: 3, renamed: "textInput")
  static var TextInput: UIUserNotificationActionBehavior { get }
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationActionOptions")
enum UIUserNotificationActivationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case foreground
  @available(swift, obsoleted: 3, renamed: "foreground")
  static var Foreground: UIUserNotificationActivationMode { get }
  case background
  @available(swift, obsoleted: 3, renamed: "background")
  static var Background: UIUserNotificationActivationMode { get }
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNNotificationCategory actions] or -[UNNotificationCategory minimalActions]")
enum UIUserNotificationActionContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case `default`
  @available(swift, obsoleted: 3, renamed: "default")
  static var Default: UIUserNotificationActionContext { get }
  case minimal
  @available(swift, obsoleted: 3, renamed: "minimal")
  static var Minimal: UIUserNotificationActionContext { get }
}
@available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNTextInputNotificationAction textInputButtonTitle]")
let UIUserNotificationTextInputActionButtonTitleKey: String
@available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNTextInputNotificationResponse userText]")
let UIUserNotificationActionResponseTypedTextKey: String
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationSettings")
class UIUserNotificationSettings : NSObject {
  convenience init(types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?)
  @available(swift, obsoleted: 3, renamed: "init(types:categories:)")
  convenience init(forTypes types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?)
  @available(*, unavailable, renamed: "init(types:categories:)", message: "Not available in Swift")
  class func settingsForTypes(_ types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?) -> Self
  var types: UIUserNotificationType { get }
  var categories: Set<UIUserNotificationCategory>? { get }
  init()
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationCategory")
class UIUserNotificationCategory : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder: NSCoder)
  var identifier: String? { get }
  func actions(for context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
  @available(swift, obsoleted: 3, renamed: "actions(for:)")
  func actionsForContext(_ context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
  @available(iOS 8.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 8.0, *)
  func mutableCopy(with zone: NSZone? = nil) -> Any
  @available(iOS 8.0, *)
  func encode(with coder: NSCoder)
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationCategory")
class UIMutableUserNotificationCategory : UIUserNotificationCategory {
  var identifier: String?
  func setActions(_ actions: [UIUserNotificationAction]?, for context: UIUserNotificationActionContext)
  @available(swift, obsoleted: 3, renamed: "setActions(_:for:)")
  func setActions(_ actions: [UIUserNotificationAction]?, forContext context: UIUserNotificationActionContext)
  init()
  init?(coder: NSCoder)
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationAction")
class UIUserNotificationAction : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder: NSCoder)
  var identifier: String? { get }
  var title: String? { get }
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior { get }
  @available(iOS 9.0, *)
  var parameters: [AnyHashable : Any] { get }
  var activationMode: UIUserNotificationActivationMode { get }
  var isAuthenticationRequired: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isAuthenticationRequired")
  var authenticationRequired: Bool { get }
  var isDestructive: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isDestructive")
  var destructive: Bool { get }
  @available(iOS 8.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 8.0, *)
  func mutableCopy(with zone: NSZone? = nil) -> Any
  @available(iOS 8.0, *)
  func encode(with coder: NSCoder)
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationAction")
class UIMutableUserNotificationAction : UIUserNotificationAction {
  var identifier: String?
  var title: String?
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior
  @available(iOS 9.0, *)
  var parameters: [AnyHashable : Any]
  var activationMode: UIUserNotificationActivationMode
  var isAuthenticationRequired: Bool
  @available(swift, obsoleted: 3, renamed: "isAuthenticationRequired")
  var authenticationRequired: Bool
  var isDestructive: Bool
  @available(swift, obsoleted: 3, renamed: "isDestructive")
  var destructive: Bool
  init()
  init?(coder: NSCoder)
}
