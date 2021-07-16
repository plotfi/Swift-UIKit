@_exported import Foundation

@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIApplicationShortcutIcon.IconType")
typealias UIApplicationShortcutIconType = UIApplicationShortcutIcon.IconType
extension UIApplicationShortcutIcon {
  @available(iOS 9.0, *)
  enum IconType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case compose
    @available(swift, obsoleted: 3, renamed: "compose")
    static var Compose: UIApplicationShortcutIcon.IconType { get }
    case play
    @available(swift, obsoleted: 3, renamed: "play")
    static var Play: UIApplicationShortcutIcon.IconType { get }
    case pause
    @available(swift, obsoleted: 3, renamed: "pause")
    static var Pause: UIApplicationShortcutIcon.IconType { get }
    case add
    @available(swift, obsoleted: 3, renamed: "add")
    static var Add: UIApplicationShortcutIcon.IconType { get }
    case location
    @available(swift, obsoleted: 3, renamed: "location")
    static var Location: UIApplicationShortcutIcon.IconType { get }
    case search
    @available(swift, obsoleted: 3, renamed: "search")
    static var Search: UIApplicationShortcutIcon.IconType { get }
    case share
    @available(swift, obsoleted: 3, renamed: "share")
    static var Share: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case prohibit
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "prohibit")
    static var Prohibit: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case contact
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "contact")
    static var Contact: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case home
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "home")
    static var Home: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case markLocation
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "markLocation")
    static var MarkLocation: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case favorite
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "favorite")
    static var Favorite: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case love
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "love")
    static var Love: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case cloud
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "cloud")
    static var Cloud: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case invitation
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "invitation")
    static var Invitation: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case confirmation
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "confirmation")
    static var Confirmation: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case mail
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "mail")
    static var Mail: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case message
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "message")
    static var Message: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case date
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "date")
    static var Date: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case time
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "time")
    static var Time: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case capturePhoto
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "capturePhoto")
    static var CapturePhoto: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case captureVideo
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "captureVideo")
    static var CaptureVideo: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case task
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "task")
    static var Task: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case taskCompleted
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "taskCompleted")
    static var TaskCompleted: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case alarm
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "alarm")
    static var Alarm: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case bookmark
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "bookmark")
    static var Bookmark: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case shuffle
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "shuffle")
    static var Shuffle: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case audio
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "audio")
    static var Audio: UIApplicationShortcutIcon.IconType { get }
    @available(iOS 9.1, *)
    case update
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "update")
    static var Update: UIApplicationShortcutIcon.IconType { get }
  }
}
@available(iOS 9.0, *)
class UIApplicationShortcutIcon : NSObject, NSCopying {
  convenience init(type: UIApplicationShortcutIcon.IconType)
  @available(*, unavailable, renamed: "init(type:)", message: "Not available in Swift")
  class func iconWithType(_ type: UIApplicationShortcutIcon.IconType) -> Self
  convenience init(templateImageName: String)
  @available(*, unavailable, renamed: "init(templateImageName:)", message: "Not available in Swift")
  class func iconWithTemplateImageName(_ templateImageName: String) -> Self
  convenience init(systemImageName: String)
  @available(*, unavailable, renamed: "init(systemImageName:)", message: "Not available in Swift")
  class func iconWithSystemImageName(_ systemImageName: String) -> Self
  init()
  @available(iOS 9.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 9.0, *)
class UIApplicationShortcutItem : NSObject, NSCopying, NSMutableCopying {
  @available(*, unavailable)
  convenience init()
  init(type: String, localizedTitle: String, localizedSubtitle: String?, icon: UIApplicationShortcutIcon?, userInfo: [String : NSSecureCoding]? = nil)
  convenience init(type: String, localizedTitle: String)
  var type: String { get }
  var localizedTitle: String { get }
  var localizedSubtitle: String? { get }
  @NSCopying var icon: UIApplicationShortcutIcon? { get }
  var userInfo: [String : NSSecureCoding]? { get }
  var targetContentIdentifier: Any? { get }
  @available(iOS 9.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 9.0, *)
  func mutableCopy(with zone: NSZone? = nil) -> Any
}
@available(iOS 9.0, *)
class UIMutableApplicationShortcutItem : UIApplicationShortcutItem {
  var type: String
  var localizedTitle: String
  var localizedSubtitle: String?
  @NSCopying var icon: UIApplicationShortcutIcon?
  var userInfo: [String : NSSecureCoding]?
  var targetContentIdentifier: Any?
  @available(*, unavailable)
  convenience init()
  init(type: String, localizedTitle: String, localizedSubtitle: String?, icon: UIApplicationShortcutIcon?, userInfo: [String : NSSecureCoding]? = nil)
  convenience init(type: String, localizedTitle: String)
}
