@_exported import Foundation

@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationRequest")
class UILocalNotification : NSObject, NSCopying, NSCoding {
  init()
  init?(coder: NSCoder)
  var fireDate: Date?
  var timeZone: TimeZone?
  var repeatInterval: NSCalendar.Unit
  var repeatCalendar: Calendar?
  @available(iOS 8.0, *)
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  @available(iOS 8.2, *)
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [AnyHashable : Any]?
  @available(iOS 8.0, *)
  var category: String?
  @available(iOS 4.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 4.0, *)
  func encode(with coder: NSCoder)
}
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's +[UNNotificationSound defaultSound]")
let UILocalNotificationDefaultSoundName: String
