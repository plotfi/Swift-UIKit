@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIBarButtonItem.Style")
typealias UIBarButtonItemStyle = UIBarButtonItem.Style
extension UIBarButtonItem {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case plain
    @available(swift, obsoleted: 3, renamed: "plain")
    static var Plain: UIBarButtonItem.Style { get }
    @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
    case bordered
    @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
    @available(swift, obsoleted: 3, renamed: "bordered")
    static var Bordered: UIBarButtonItem.Style { get }
    case done
    @available(swift, obsoleted: 3, renamed: "done")
    static var Done: UIBarButtonItem.Style { get }
  }
  enum SystemItem : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case done
    @available(swift, obsoleted: 3, renamed: "done")
    static var Done: UIBarButtonItem.SystemItem { get }
    case cancel
    @available(swift, obsoleted: 3, renamed: "cancel")
    static var Cancel: UIBarButtonItem.SystemItem { get }
    case edit
    @available(swift, obsoleted: 3, renamed: "edit")
    static var Edit: UIBarButtonItem.SystemItem { get }
    case save
    @available(swift, obsoleted: 3, renamed: "save")
    static var Save: UIBarButtonItem.SystemItem { get }
    case add
    @available(swift, obsoleted: 3, renamed: "add")
    static var Add: UIBarButtonItem.SystemItem { get }
    case flexibleSpace
    @available(swift, obsoleted: 3, renamed: "flexibleSpace")
    static var FlexibleSpace: UIBarButtonItem.SystemItem { get }
    case fixedSpace
    @available(swift, obsoleted: 3, renamed: "fixedSpace")
    static var FixedSpace: UIBarButtonItem.SystemItem { get }
    case compose
    @available(swift, obsoleted: 3, renamed: "compose")
    static var Compose: UIBarButtonItem.SystemItem { get }
    case reply
    @available(swift, obsoleted: 3, renamed: "reply")
    static var Reply: UIBarButtonItem.SystemItem { get }
    case action
    @available(swift, obsoleted: 3, renamed: "action")
    static var Action: UIBarButtonItem.SystemItem { get }
    case organize
    @available(swift, obsoleted: 3, renamed: "organize")
    static var Organize: UIBarButtonItem.SystemItem { get }
    case bookmarks
    @available(swift, obsoleted: 3, renamed: "bookmarks")
    static var Bookmarks: UIBarButtonItem.SystemItem { get }
    case search
    @available(swift, obsoleted: 3, renamed: "search")
    static var Search: UIBarButtonItem.SystemItem { get }
    case refresh
    @available(swift, obsoleted: 3, renamed: "refresh")
    static var Refresh: UIBarButtonItem.SystemItem { get }
    case stop
    @available(swift, obsoleted: 3, renamed: "stop")
    static var Stop: UIBarButtonItem.SystemItem { get }
    case camera
    @available(swift, obsoleted: 3, renamed: "camera")
    static var Camera: UIBarButtonItem.SystemItem { get }
    case trash
    @available(swift, obsoleted: 3, renamed: "trash")
    static var Trash: UIBarButtonItem.SystemItem { get }
    case play
    @available(swift, obsoleted: 3, renamed: "play")
    static var Play: UIBarButtonItem.SystemItem { get }
    case pause
    @available(swift, obsoleted: 3, renamed: "pause")
    static var Pause: UIBarButtonItem.SystemItem { get }
    case rewind
    @available(swift, obsoleted: 3, renamed: "rewind")
    static var Rewind: UIBarButtonItem.SystemItem { get }
    case fastForward
    @available(swift, obsoleted: 3, renamed: "fastForward")
    static var FastForward: UIBarButtonItem.SystemItem { get }
    @available(iOS 3.0, *)
    case undo
    @available(iOS 3.0, *)
    @available(swift, obsoleted: 3, renamed: "undo")
    static var Undo: UIBarButtonItem.SystemItem { get }
    @available(iOS 3.0, *)
    case redo
    @available(iOS 3.0, *)
    @available(swift, obsoleted: 3, renamed: "redo")
    static var Redo: UIBarButtonItem.SystemItem { get }
    @available(iOS, introduced: 4.0, deprecated: 11.0)
    case pageCurl
    @available(iOS, introduced: 4.0, deprecated: 11.0)
    @available(swift, obsoleted: 3, renamed: "pageCurl")
    static var PageCurl: UIBarButtonItem.SystemItem { get }
    @available(iOS 13.0, *)
    case close
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "close")
    static var Close: UIBarButtonItem.SystemItem { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIBarButtonItem.SystemItem")
typealias UIBarButtonSystemItem = UIBarButtonItem.SystemItem
@available(iOS 2.0, *)
class UIBarButtonItem : UIBarItem, NSCoding {
  init()
  init?(coder: NSCoder)
  convenience init(image: UIImage?, style: UIBarButtonItem.Style, target: Any?, action: Selector?)
  @available(iOS 5.0, *)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItem.Style, target: Any?, action: Selector?)
  convenience init(title: String?, style: UIBarButtonItem.Style, target: Any?, action: Selector?)
  convenience init(barButtonSystemItem systemItem: UIBarButtonItem.SystemItem, target: Any?, action: Selector?)
  convenience init(customView: UIView)

  /// Creates a bar button item for the given systemItem. The primaryAction is copied, and its title & image are ignored.
  @available(iOS 14.0, *)
  convenience init(__barButtonSystemItem systemItem: UIBarButtonItem.SystemItem, primaryAction: UIAction?)

  /// Creates a plain-style bar button item from the properties of primaryAction. primaryAction is copied.
  @available(iOS 14.0, *)
  convenience init(__primaryAction primaryAction: UIAction?)

  /// Creates a bar button item for the given systemItem. The constructed item will present the menu immediately when touched.
  @available(iOS 14.0, *)
  @available(*, unavailable, message: "Not available in Swift")
  convenience init(barButtonSystemItem systemItem: UIBarButtonItem.SystemItem, menu: UIMenu?)

  /// Creates a plain-style bar button item with the given title. The constructed item will present the menu immediately when touched.
  @available(iOS 14.0, *)
  @available(*, unavailable, message: "Not available in Swift")
  convenience init(title: String?, menu: UIMenu?)

  /// Creates a plain-style bar button item with the given item. The constructed item will present the menu immediately when touched.
  @available(iOS 14.0, *)
  @available(*, unavailable, message: "Not available in Swift")
  convenience init(image: UIImage?, menu: UIMenu?)

  /// Construct a new fixed space item with the given width.
  @available(iOS 14.0, *)
  class func fixedSpace(_ width: CGFloat) -> Self

  /// Construct a new fixed space item with the given width.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "fixedSpace(_:)")
  class func fixedSpaceItemOfWidth(_ width: CGFloat) -> Self

  /// Construct a new flexible space item.
  @available(iOS 14.0, *)
  class func flexibleSpace() -> Self

  /// Construct a new flexible space item.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "flexibleSpace()")
  class func flexibleSpaceItem() -> Self
  var style: UIBarButtonItem.Style
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector?
  weak var target: @sil_weak AnyObject?

  /// Set the primaryAction on this item, updating the title & image of the item if appropriate (primaryAction is non-nil, and this is not a system item). When primaryAction is non-nil, the target & action properties are ignored. If primaryAction is set to nil, the title & image properties are left unchanged.
  @available(iOS 14.0, *)
  @NSCopying var primaryAction: UIAction?

  /// When non-nil the menu is presented, the gesture used to trigger the menu is based on if the bar button item would normally trigger an action when tapped.
  @available(iOS 14.0, *)
  @NSCopying var menu: UIMenu?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:barMetrics:)")
  func setBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:barMetrics:)")
  func backgroundImageForState(_ state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:style:barMetrics:)")
  func setBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics)
  @available(iOS 6.0, *)
  func backgroundImage(for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:style:barMetrics:)")
  func backgroundImageForState(_ state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  var tintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundVerticalPositionAdjustment(_:for:)")
  func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundVerticalPositionAdjustment(for:)")
  func backgroundVerticalPositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  func setTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setTitlePositionAdjustment(_:for:)")
  func setTitlePositionAdjustment(_ adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titlePositionAdjustment(for barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "titlePositionAdjustment(for:)")
  func titlePositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackButtonBackgroundImage(_:for:barMetrics:)")
  func setBackButtonBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backButtonBackgroundImage(for:barMetrics:)")
  func backButtonBackgroundImageForState(_ state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackButtonTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackButtonTitlePositionAdjustment(_:for:)")
  func setBackButtonTitlePositionAdjustment(_ adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonTitlePositionAdjustment(for barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backButtonTitlePositionAdjustment(for:)")
  func backButtonTitlePositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackButtonBackgroundVerticalPositionAdjustment(_:for:)")
  func setBackButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backButtonBackgroundVerticalPositionAdjustment(for:)")
  func backButtonBackgroundVerticalPositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> CGFloat
}

extension UIBarButtonItem {
  @available(iOS 14.0, *)
  convenience init(systemItem: UIBarButtonItem.SystemItem, primaryAction: UIAction? = nil, menu: UIMenu? = nil)
  @available(iOS 14.0, *)
  convenience init(title: String? = nil, image: UIImage? = nil, primaryAction: UIAction? = nil, menu: UIMenu? = nil)
}
extension UIBarButtonItem : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
