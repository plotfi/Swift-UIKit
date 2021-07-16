@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIContextualAction.Handler")
typealias UIContextualActionHandler = UIContextualAction.Handler
extension UIContextualAction {
  typealias Handler = (UIContextualAction, UIView, @escaping (Bool) -> Void) -> Void
  @available(iOS 11.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case normal
    @available(swift, obsoleted: 3, renamed: "normal")
    static var Normal: UIContextualAction.Style { get }
    case destructive
    @available(swift, obsoleted: 3, renamed: "destructive")
    static var Destructive: UIContextualAction.Style { get }
  }
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIContextualAction.Style")
typealias UIContextualActionStyle = UIContextualAction.Style
@available(iOS 11.0, *)
class UIContextualAction : NSObject {
  convenience init(style: UIContextualAction.Style, title: String?, handler: @escaping UIContextualAction.Handler)
  @available(*, unavailable, renamed: "init(style:title:handler:)", message: "Not available in Swift")
  class func contextualActionWithStyle(_ style: UIContextualAction.Style, title: String?, handler: @escaping UIContextualAction.Handler) -> Self
  var style: UIContextualAction.Style { get }
  var handler: UIContextualAction.Handler { get }
  var title: String?
  @NSCopying var backgroundColor: UIColor!
  @NSCopying var image: UIImage?
  init()
}
