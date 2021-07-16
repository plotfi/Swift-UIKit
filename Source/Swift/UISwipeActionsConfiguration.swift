@_exported import Foundation

@available(iOS 11.0, *)
class UISwipeActionsConfiguration : NSObject {
  convenience init(actions: [UIContextualAction])
  @available(*, unavailable, renamed: "init(actions:)", message: "Not available in Swift")
  class func configurationWithActions(_ actions: [UIContextualAction]) -> Self
  var actions: [UIContextualAction] { get }
  var performsFirstActionWithFullSwipe: Bool
  init()
}
