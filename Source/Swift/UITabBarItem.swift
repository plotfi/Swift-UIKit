@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UITabBarItem.SystemItem")
typealias UITabBarSystemItem = UITabBarItem.SystemItem
extension UITabBarItem {
  enum SystemItem : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case more
    @available(swift, obsoleted: 3, renamed: "more")
    static var More: UITabBarItem.SystemItem { get }
    case favorites
    @available(swift, obsoleted: 3, renamed: "favorites")
    static var Favorites: UITabBarItem.SystemItem { get }
    case featured
    @available(swift, obsoleted: 3, renamed: "featured")
    static var Featured: UITabBarItem.SystemItem { get }
    case topRated
    @available(swift, obsoleted: 3, renamed: "topRated")
    static var TopRated: UITabBarItem.SystemItem { get }
    case recents
    @available(swift, obsoleted: 3, renamed: "recents")
    static var Recents: UITabBarItem.SystemItem { get }
    case contacts
    @available(swift, obsoleted: 3, renamed: "contacts")
    static var Contacts: UITabBarItem.SystemItem { get }
    case history
    @available(swift, obsoleted: 3, renamed: "history")
    static var History: UITabBarItem.SystemItem { get }
    case bookmarks
    @available(swift, obsoleted: 3, renamed: "bookmarks")
    static var Bookmarks: UITabBarItem.SystemItem { get }
    case search
    @available(swift, obsoleted: 3, renamed: "search")
    static var Search: UITabBarItem.SystemItem { get }
    case downloads
    @available(swift, obsoleted: 3, renamed: "downloads")
    static var Downloads: UITabBarItem.SystemItem { get }
    case mostRecent
    @available(swift, obsoleted: 3, renamed: "mostRecent")
    static var MostRecent: UITabBarItem.SystemItem { get }
    case mostViewed
    @available(swift, obsoleted: 3, renamed: "mostViewed")
    static var MostViewed: UITabBarItem.SystemItem { get }
  }
}
@available(iOS 2.0, *)
class UITabBarItem : UIBarItem {
  init()
  init?(coder: NSCoder)
  convenience init(title: String?, image: UIImage?, tag: Int)
  @available(iOS 7.0, *)
  convenience init(title: String?, image: UIImage?, selectedImage: UIImage?)
  convenience init(tabBarSystemItem systemItem: UITabBarItem.SystemItem, tag: Int)
  @available(iOS 7.0, *)
  var selectedImage: UIImage?
  var badgeValue: String?
  @available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, message: "Use initWithTitle:image:selectedImage: or the image and selectedImage properties along with UIImageRenderingModeAlwaysOriginal")
  func setFinishedSelectedImage(_ selectedImage: UIImage?, withFinishedUnselectedImage unselectedImage: UIImage?)
  @available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func finishedSelectedImage() -> UIImage?
  @available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func finishedUnselectedImage() -> UIImage?
  @available(iOS 5.0, *)
  var titlePositionAdjustment: UIOffset

  /// If this item displays a badge, this color will be used for the badge's background. If set to nil, the default background color will be used instead.
  @available(iOS 10.0, *)
  @NSCopying var badgeColor: UIColor?

  /// Provide text attributes to use to draw the badge text for the given singular control state (Normal, Disabled, Focused, Selected, or Highlighted). Default values will be supplied for keys that are not provided by this dictionary. See NSAttributedString.h for details on what keys are available.
  @available(iOS 10.0, *)
  func setBadgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)

  /// Provide text attributes to use to draw the badge text for the given singular control state (Normal, Disabled, Focused, Selected, or Highlighted). Default values will be supplied for keys that are not provided by this dictionary. See NSAttributedString.h for details on what keys are available.
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "setBadgeTextAttributes(_:for:)")
  func setBadgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, forState state: UIControl.State)

  /// Returns attributes previously set via -setBadgeTextAttributes:forState:.
  @available(iOS 10.0, *)
  func badgeTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?

  /// Returns attributes previously set via -setBadgeTextAttributes:forState:.
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "badgeTextAttributes(for:)")
  func badgeTextAttributesForState(_ state: UIControl.State) -> [NSAttributedString.Key : Any]?

  ///  When set and this item is selected, overrides the hosting tab bar's standardAppearance.
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UITabBarAppearance?
}
extension UITabBarItem : UISpringLoadedInteractionSupporting {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool
}
