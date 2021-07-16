@_exported import Foundation

@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAlertAction.Style")
typealias UIAlertActionStyle = UIAlertAction.Style
extension UIAlertAction {
  @available(iOS 8.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UIAlertAction.Style { get }
    case cancel
    @available(swift, obsoleted: 3, renamed: "cancel")
    static var Cancel: UIAlertAction.Style { get }
    case destructive
    @available(swift, obsoleted: 3, renamed: "destructive")
    static var Destructive: UIAlertAction.Style { get }
  }
}
@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAlertController.Style")
typealias UIAlertControllerStyle = UIAlertController.Style
extension UIAlertController {
  @available(iOS 8.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case actionSheet
    @available(swift, obsoleted: 3, renamed: "actionSheet")
    static var ActionSheet: UIAlertController.Style { get }
    case alert
    @available(swift, obsoleted: 3, renamed: "alert")
    static var Alert: UIAlertController.Style { get }
  }
}
@available(iOS 8.0, *)
class UIAlertAction : NSObject, NSCopying {
  convenience init(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)? = nil)
  @available(*, unavailable, renamed: "init(title:style:handler:)", message: "Not available in Swift")
  class func actionWithTitle(_ title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)? = nil) -> Self
  var title: String? { get }
  var style: UIAlertAction.Style { get }
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 8.0, *)
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertController.Style)
  @available(*, unavailable, renamed: "init(title:message:preferredStyle:)", message: "Not available in Swift")
  class func alertControllerWithTitle(_ title: String?, message: String?, preferredStyle: UIAlertController.Style) -> Self
  func addAction(_ action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  @available(iOS 9.0, *)
  var preferredAction: UIAlertAction?
  func addTextField(configurationHandler: ((UITextField) -> Void)? = nil)
  @available(swift, obsoleted: 3, renamed: "addTextField(configurationHandler:)")
  func addTextFieldWithConfigurationHandler(_ configurationHandler: ((UITextField) -> Void)? = nil)
  var textFields: [UITextField]? { get }
  var title: String?
  var message: String?
  var preferredStyle: UIAlertController.Style { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension UIAlertController : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
