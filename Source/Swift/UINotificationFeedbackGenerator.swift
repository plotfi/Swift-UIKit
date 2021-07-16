@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UINotificationFeedbackGenerator.FeedbackType")
typealias UINotificationFeedbackType = UINotificationFeedbackGenerator.FeedbackType
extension UINotificationFeedbackGenerator {
  enum FeedbackType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case success
    @available(swift, obsoleted: 3, renamed: "success")
    static var Success: UINotificationFeedbackGenerator.FeedbackType { get }
    case warning
    @available(swift, obsoleted: 3, renamed: "warning")
    static var Warning: UINotificationFeedbackGenerator.FeedbackType { get }
    case error
    @available(swift, obsoleted: 3, renamed: "error")
    static var Error: UINotificationFeedbackGenerator.FeedbackType { get }
  }
}
@available(iOS 10.0, *)
class UINotificationFeedbackGenerator : UIFeedbackGenerator {

  /// call when a notification is displayed, passing the corresponding type
  func notificationOccurred(_ notificationType: UINotificationFeedbackGenerator.FeedbackType)
  init()
}
