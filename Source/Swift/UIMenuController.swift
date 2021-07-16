@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIMenuController.ArrowDirection")
typealias UIMenuControllerArrowDirection = UIMenuController.ArrowDirection
@available(iOS 3.0, *)
class UIMenuController : NSObject {
  class var shared: UIMenuController { get }
  @available(swift, obsoleted: 3, renamed: "shared")
  class var sharedMenuController: UIMenuController { get }
  var isMenuVisible: Bool
  @available(swift, obsoleted: 3, renamed: "isMenuVisible")
  var menuVisible: Bool
  @available(iOS, introduced: 3.0, deprecated: 13.0, message: "Use showMenuFromView:rect: or hideMenuFromView: instead.")
  func setMenuVisible(_ menuVisible: Bool, animated: Bool)
  @available(iOS, introduced: 3.0, deprecated: 13.0, message: "Use showMenuFromView:rect: instead.")
  func setTargetRect(_ targetRect: CGRect, in targetView: UIView)
  @available(swift, obsoleted: 3, renamed: "setTargetRect(_:in:)")
  @available(iOS, introduced: 3.0, deprecated: 13.0, message: "Use showMenuFromView:rect: instead.")
  func setTargetRect(_ targetRect: CGRect, inView targetView: UIView)
  @available(iOS 13.0, *)
  func showMenu(from targetView: UIView, rect targetRect: CGRect)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "showMenu(from:rect:)")
  func showMenuFromView(_ targetView: UIView, rect targetRect: CGRect)
  @available(iOS 13.0, *)
  func hideMenu(from targetView: UIView)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "hideMenu(from:)")
  func hideMenuFromView(_ targetView: UIView)
  @available(iOS 13.0, *)
  func hideMenu()
  @available(iOS 3.2, *)
  var arrowDirection: UIMenuController.ArrowDirection
  @available(iOS 3.2, *)
  var menuItems: [UIMenuItem]?
  func update()
  var menuFrame: CGRect { get }
  init()
}
@available(swift, obsoleted: 3, renamed: "UIMenuController.willShowMenuNotification")
let UIMenuControllerWillShowMenuNotification: NSNotification.Name
extension UIMenuController {
  class let willShowMenuNotification: NSNotification.Name
  class let didShowMenuNotification: NSNotification.Name
  class let willHideMenuNotification: NSNotification.Name
  class let didHideMenuNotification: NSNotification.Name
  class let menuFrameDidChangeNotification: NSNotification.Name
  enum ArrowDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UIMenuController.ArrowDirection { get }
    @available(iOS 3.2, *)
    case up
    @available(iOS 3.2, *)
    @available(swift, obsoleted: 3, renamed: "up")
    static var Up: UIMenuController.ArrowDirection { get }
    @available(iOS 3.2, *)
    case down
    @available(iOS 3.2, *)
    @available(swift, obsoleted: 3, renamed: "down")
    static var Down: UIMenuController.ArrowDirection { get }
    @available(iOS 3.2, *)
    case left
    @available(iOS 3.2, *)
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: UIMenuController.ArrowDirection { get }
    @available(iOS 3.2, *)
    case right
    @available(iOS 3.2, *)
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: UIMenuController.ArrowDirection { get }
  }
}
@available(swift, obsoleted: 3, renamed: "UIMenuController.didShowMenuNotification")
let UIMenuControllerDidShowMenuNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIMenuController.willHideMenuNotification")
let UIMenuControllerWillHideMenuNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIMenuController.didHideMenuNotification")
let UIMenuControllerDidHideMenuNotification: NSNotification.Name
@available(swift, obsoleted: 3, renamed: "UIMenuController.menuFrameDidChangeNotification")
let UIMenuControllerMenuFrameDidChangeNotification: NSNotification.Name
@available(iOS 3.2, *)
class UIMenuItem : NSObject {
  init(title: String, action: Selector)
  var title: String
  var action: Selector
  convenience init()
}
