@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITabBar.ItemPositioning")
typealias UITabBarItemPositioning = UITabBar.ItemPositioning
extension UITabBar {
  @available(iOS 7.0, *)
  enum ItemPositioning : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UITabBar.ItemPositioning { get }
    case fill
    @available(swift, obsoleted: 3, renamed: "fill")
    static var Fill: UITabBar.ItemPositioning { get }
    case centered
    @available(swift, obsoleted: 3, renamed: "centered")
    static var Centered: UITabBar.ItemPositioning { get }
  }
}
@available(iOS 2.0, *)
class UITabBar : UIView {
  weak var delegate: @sil_weak UITabBarDelegate?
  var items: [UITabBarItem]?
  weak var selectedItem: @sil_weak UITabBarItem?
  func setItems(_ items: [UITabBarItem]?, animated: Bool)
  func beginCustomizingItems(_ items: [UITabBarItem])
  func endCustomizing(animated: Bool) -> Bool
  @available(swift, obsoleted: 3, renamed: "endCustomizing(animated:)")
  func endCustomizingAnimated(_ animated: Bool) -> Bool
  var isCustomizing: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isCustomizing")
  var customizing: Bool { get }
  @available(iOS 5.0, *)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?

  /// Unselected items in this tab bar will be tinted with this color. Setting this value to nil indicates that UITabBar should use its default value instead.
  @available(iOS 10.0, *)
  @NSCopying var unselectedItemTintColor: UIColor?
  @available(iOS, introduced: 5.0, deprecated: 8.0)
  var selectedImageTintColor: UIColor?
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var selectionIndicatorImage: UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 7.0, *)
  var itemPositioning: UITabBar.ItemPositioning
  @available(iOS 7.0, *)
  var itemWidth: CGFloat
  @available(iOS 7.0, *)
  var itemSpacing: CGFloat
  @available(iOS 7.0, *)
  var barStyle: UIBarStyle
  @available(iOS 7.0, *)
  var isTranslucent: Bool
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "isTranslucent")
  var translucent: Bool

  /// Describes the appearance attributes for the tab bar to use.
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UITabBarAppearance
  @available(iOS, unavailable)
  var leadingAccessoryView: UIView { get }
  @available(iOS, unavailable)
  var trailingAccessoryView: UIView { get }
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol UITabBarDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
  @available(swift, obsoleted: 3, renamed: "tabBar(_:didSelect:)")
  optional func tabBar(_ tabBar: UITabBar, didSelectItem item: UITabBarItem)
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem])
  @available(swift, obsoleted: 3, renamed: "tabBar(_:willBeginCustomizing:)")
  optional func tabBar(_ tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem])
  @available(swift, obsoleted: 3, renamed: "tabBar(_:didBeginCustomizing:)")
  optional func tabBar(_ tabBar: UITabBar, didBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed: Bool)
  @available(swift, obsoleted: 3, renamed: "tabBar(_:willEndCustomizing:changed:)")
  optional func tabBar(_ tabBar: UITabBar, willEndCustomizingItems items: [UITabBarItem], changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed: Bool)
  @available(swift, obsoleted: 3, renamed: "tabBar(_:didEndCustomizing:changed:)")
  optional func tabBar(_ tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool)
}
extension UITabBar : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
