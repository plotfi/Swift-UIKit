@_exported import Foundation

@available(swift, obsoleted: 3, renamed: "UINavigationItem.LargeTitleDisplayMode")
typealias UINavigationItemLargeTitleDisplayMode = UINavigationItem.LargeTitleDisplayMode
extension UINavigationItem {
  enum LargeTitleDisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int

    /// Automatically use the large out-of-line title based on the state of the previous item in the navigation bar. An item with largeTitleDisplayMode=Automatic will show or hide the large title based on the request of the previous navigation item. If the first item pushed is set to Automatic, then it will show the large title if the navigation bar has prefersLargeTitles=YES.
    case automatic

    /// Automatically use the large out-of-line title based on the state of the previous item in the navigation bar. An item with largeTitleDisplayMode=Automatic will show or hide the large title based on the request of the previous navigation item. If the first item pushed is set to Automatic, then it will show the large title if the navigation bar has prefersLargeTitles=YES.
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UINavigationItem.LargeTitleDisplayMode { get }

    /// Always use a larger title when this item is topmost.
    case always

    /// Always use a larger title when this item is topmost.
    @available(swift, obsoleted: 3, renamed: "always")
    static var Always: UINavigationItem.LargeTitleDisplayMode { get }

    /// Never use a larger title when this item is topmost.
    case never

    /// Never use a larger title when this item is topmost.
    @available(swift, obsoleted: 3, renamed: "never")
    static var Never: UINavigationItem.LargeTitleDisplayMode { get }
  }
  enum BackButtonDisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int

    /// Default mode, uses an appropriate title, followed by a generic title (typically 'Back'), then no title.
    case `default`

    /// Default mode, uses an appropriate title, followed by a generic title (typically 'Back'), then no title.
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UINavigationItem.BackButtonDisplayMode { get }

    /// Generic titles only. Ignores .title and .backButtonTitle (but *not* .backBarButtonItem.title).
    case generic

    /// Generic titles only. Ignores .title and .backButtonTitle (but *not* .backBarButtonItem.title).
    @available(swift, obsoleted: 3, renamed: "generic")
    static var Generic: UINavigationItem.BackButtonDisplayMode { get }

    /// Don't use a title, just the back button indicator image.
    case minimal

    /// Don't use a title, just the back button indicator image.
    @available(swift, obsoleted: 3, renamed: "minimal")
    static var Minimal: UINavigationItem.BackButtonDisplayMode { get }
  }
}
@available(swift, obsoleted: 3, renamed: "UINavigationItem.BackButtonDisplayMode")
typealias UINavigationItemBackButtonDisplayMode = UINavigationItem.BackButtonDisplayMode
@available(iOS 2.0, *)
class UINavigationItem : NSObject, NSCoding {
  init(title: String)
  init?(coder: NSCoder)

  /// Title when topmost on the stack. default is nil
  var title: String?

  /// Custom view to use in lieu of a title. May be sized horizontally. Only used when item is topmost on the stack.
  var titleView: UIView?

  /// Explanatory text to display above the navigation bar buttons.
  var prompt: String?

  /// Bar button item to use for the back button when this item is the navigation bar's backItem.
  var backBarButtonItem: UIBarButtonItem?

  /// Title to use when this item is the navigation bar's backItem. Default is nil. backBarButtonItem takes precedence if both are specified.
  @available(iOS 11.0, *)
  var backButtonTitle: String?

  /// If YES, this navigation item will hide the back button when it's on top of the stack.
  var hidesBackButton: Bool
  func setHidesBackButton(_ hidesBackButton: Bool, animated: Bool)

  /// Controls how the back button sources its title.
  @available(iOS 14.0, *)
  var backButtonDisplayMode: UINavigationItem.BackButtonDisplayMode
  @available(iOS 5.0, *)
  var leftBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  var rightBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  func setLeftBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  func setRightBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  var leftItemsSupplementBackButton: Bool

  /// Some navigation items want to display a custom left or right item when they're on top of the stack. A custom left item replaces the regular back button unless you set leftItemsSupplementBackButton to YES
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButton(_ item: UIBarButtonItem?, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "setLeftBarButton(_:animated:)")
  func setLeftBarButtonItem(_ item: UIBarButtonItem?, animated: Bool)
  func setRightBarButton(_ item: UIBarButtonItem?, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "setRightBarButton(_:animated:)")
  func setRightBarButtonItem(_ item: UIBarButtonItem?, animated: Bool)

  /// When UINavigationBar.prefersLargeTitles=YES, this property controls when the larger out-of-line title is displayed. If prefersLargeTitles=NO, this property has no effect. The default value is Automatic.
  @available(iOS 11.0, *)
  var largeTitleDisplayMode: UINavigationItem.LargeTitleDisplayMode

  /// A view controller that will be shown inside of a navigation controller can assign a UISearchController to this property to display the search controller’s search bar in its containing navigation controller’s navigation bar.
  @available(iOS 11.0, *)
  var searchController: UISearchController?

  /// If this property is true (the default), the searchController’s search bar will hide as the user scrolls in the top view controller’s scroll view. If false, the search bar will remain visible and pinned underneath the navigation bar.
  @available(iOS 11.0, *)
  var hidesSearchBarWhenScrolling: Bool

  ///  When set and this item is topmost, overrides the hosting navigation bar's standardAppearance. See UINavigationBar.standardAppearance for further details.
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UINavigationBarAppearance?

  ///  When set and this item is topmost, overrides the hosting navigation bar's compactAppearance. See UINavigationBar.compactAppearance for further details.
  @available(iOS 13.0, *)
  @NSCopying var compactAppearance: UINavigationBarAppearance?

  ///  When set and this item is topmost, overrides the hosting navigation bar's scrollEdgeAppearance. See UINavigationBar.scrollEdgeAppearance for further details.
  @available(iOS 13.0, *)
  @NSCopying var scrollEdgeAppearance: UINavigationBarAppearance?
  convenience init()
  @available(iOS 2.0, *)
  func encode(with coder: NSCoder)
}
