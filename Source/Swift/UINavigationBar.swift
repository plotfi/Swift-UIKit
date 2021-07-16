@_exported import Foundation

@available(iOS 2.0, *)
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UINavigationBarDelegate?
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isTranslucent")
  var translucent: Bool
  func pushItem(_ item: UINavigationItem, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "pushItem(_:animated:)")
  func pushNavigationItem(_ item: UINavigationItem, animated: Bool)
  func popItem(animated: Bool) -> UINavigationItem?
  @available(swift, obsoleted: 3, renamed: "popItem(animated:)")
  func popNavigationItemAnimated(_ animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(_ items: [UINavigationItem]?, animated: Bool)

  /// When set to YES, the navigation bar will use a larger out-of-line title view when requested by the current navigation item. To specify when the large out-of-line title view appears, see UINavigationItem.largeTitleDisplayMode. Defaults to NO.
  @available(iOS 11.0, *)
  var prefersLargeTitles: Bool
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:barMetrics:)")
  func setBackgroundImage(_ backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:barMetrics:)")
  func backgroundImageForBarPosition(_ barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:)")
  func setBackgroundImage(_ backgroundImage: UIImage?, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(for barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:)")
  func backgroundImageForBarMetrics(_ barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 5.0, *)
  var titleTextAttributes: [NSAttributedString.Key : Any]?
  @available(iOS 11.0, *)
  var largeTitleTextAttributes: [NSAttributedString.Key : Any]?
  @available(iOS 5.0, *)
  func setTitleVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "setTitleVerticalPositionAdjustment(_:for:)")
  func setTitleVerticalPositionAdjustment(_ adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titleVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "titleVerticalPositionAdjustment(for:)")
  func titleVerticalPositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 7.0, *)
  var backIndicatorImage: UIImage?
  @available(iOS 7.0, *)
  var backIndicatorTransitionMaskImage: UIImage?

  /// Describes the appearance attributes for the navigation bar to use when it is displayed with its standard height.
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UINavigationBarAppearance

  /// Describes the appearance attributes for the navigation bar to use when it is displayed with its compact height. If not set, the standardAppearance will be used instead.
  @available(iOS 13.0, *)
  @NSCopying var compactAppearance: UINavigationBarAppearance?

  /// Describes the appearance attributes for the navigation bar to use when an associated UIScrollView has reached the edge abutting the bar (the top edge for the navigation bar). If not set, a modified standardAppearance will be used instead.
  @available(iOS 13.0, *)
  @NSCopying var scrollEdgeAppearance: UINavigationBarAppearance?
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPush item: UINavigationItem) -> Bool
  @available(swift, obsoleted: 3, renamed: "navigationBar(_:shouldPush:)")
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPushItem item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, didPush item: UINavigationItem)
  @available(swift, obsoleted: 3, renamed: "navigationBar(_:didPush:)")
  optional func navigationBar(_ navigationBar: UINavigationBar, didPushItem item: UINavigationItem)
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool
  @available(swift, obsoleted: 3, renamed: "navigationBar(_:shouldPop:)")
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPopItem item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, didPop item: UINavigationItem)
  @available(swift, obsoleted: 3, renamed: "navigationBar(_:didPop:)")
  optional func navigationBar(_ navigationBar: UINavigationBar, didPopItem item: UINavigationItem)
}
