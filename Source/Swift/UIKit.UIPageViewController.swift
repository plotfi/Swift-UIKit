@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIPageViewController.NavigationOrientation")
typealias UIPageViewControllerNavigationOrientation = UIPageViewController.NavigationOrientation
extension UIPageViewController {
  enum NavigationOrientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case horizontal
    @available(swift, obsoleted: 3, renamed: "horizontal")
    static var Horizontal: UIPageViewController.NavigationOrientation { get }
    case vertical
    @available(swift, obsoleted: 3, renamed: "vertical")
    static var Vertical: UIPageViewController.NavigationOrientation { get }
  }
  enum SpineLocation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIPageViewController.SpineLocation { get }
    case min
    @available(swift, obsoleted: 3, renamed: "min")
    static var Min: UIPageViewController.SpineLocation { get }
    case mid
    @available(swift, obsoleted: 3, renamed: "mid")
    static var Mid: UIPageViewController.SpineLocation { get }
    case max
    @available(swift, obsoleted: 3, renamed: "max")
    static var Max: UIPageViewController.SpineLocation { get }
  }
  enum NavigationDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case forward
    @available(swift, obsoleted: 3, renamed: "forward")
    static var Forward: UIPageViewController.NavigationDirection { get }
    case reverse
    @available(swift, obsoleted: 3, renamed: "reverse")
    static var Reverse: UIPageViewController.NavigationDirection { get }
  }
  enum TransitionStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case pageCurl
    @available(swift, obsoleted: 3, renamed: "pageCurl")
    static var PageCurl: UIPageViewController.TransitionStyle { get }
    case scroll
    @available(swift, obsoleted: 3, renamed: "scroll")
    static var Scroll: UIPageViewController.TransitionStyle { get }
  }
  struct OptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIPageViewController.SpineLocation")
typealias UIPageViewControllerSpineLocation = UIPageViewController.SpineLocation
@available(swift, obsoleted: 4.2, renamed: "UIPageViewController.NavigationDirection")
typealias UIPageViewControllerNavigationDirection = UIPageViewController.NavigationDirection
@available(swift, obsoleted: 4.2, renamed: "UIPageViewController.TransitionStyle")
typealias UIPageViewControllerTransitionStyle = UIPageViewController.TransitionStyle
@available(swift, obsoleted: 3, renamed: "UIPageViewController.OptionsKey")
typealias UIPageViewControllerOptionsKey = UIPageViewController.OptionsKey
@available(swift, obsoleted: 3, renamed: "UIPageViewControllerOptionsKey.spineLocation")
let UIPageViewControllerOptionSpineLocationKey: UIPageViewController.OptionsKey
extension UIPageViewController.OptionsKey {
  static let spineLocation: UIPageViewController.OptionsKey
  @available(swift, obsoleted: 4.2, renamed: "UIPageViewControllerOptionsKey.spineLocation")
  static let UIPageViewControllerOptionSpineLocationKey: UIPageViewController.OptionsKey
  @available(iOS 6.0, *)
  static let interPageSpacing: UIPageViewController.OptionsKey
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 4.2, renamed: "UIPageViewControllerOptionsKey.interPageSpacing")
  static let UIPageViewControllerOptionInterPageSpacingKey: UIPageViewController.OptionsKey
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UIPageViewControllerOptionsKey.interPageSpacing")
let UIPageViewControllerOptionInterPageSpacingKey: UIPageViewController.OptionsKey
@available(iOS 5.0, *)
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil)
  init?(coder: NSCoder)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewController.TransitionStyle { get }
  var navigationOrientation: UIPageViewController.NavigationOrientation { get }
  var spineLocation: UIPageViewController.SpineLocation { get }
  var isDoubleSided: Bool
  @available(swift, obsoleted: 3, renamed: "isDoubleSided")
  var doubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(_ viewControllers: [UIViewController]?, direction: UIPageViewController.NavigationDirection, animated: Bool, completion: ((Bool) -> Void)? = nil)
  func setViewControllers(_ viewControllers: [UIViewController]?, direction: UIPageViewController.NavigationDirection, animated: Bool) async -> Bool
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  convenience init()
}
protocol UIPageViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "pageViewController(_:willTransitionTo:)")
  optional func pageViewController(_ pageViewController: UIPageViewController, willTransitionToViewControllers pendingViewControllers: [UIViewController])
  @available(iOS 5.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
  @available(iOS 5.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, spineLocationFor orientation: UIInterfaceOrientation) -> UIPageViewController.SpineLocation
  @available(swift, obsoleted: 3, renamed: "pageViewController(_:spineLocationFor:)")
  optional func pageViewController(_ pageViewController: UIPageViewController, spineLocationForInterfaceOrientation orientation: UIInterfaceOrientation) -> UIPageViewController.SpineLocation
  @available(iOS 7.0, *)
  optional func pageViewControllerSupportedInterfaceOrientations(_ pageViewController: UIPageViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func pageViewControllerPreferredInterfaceOrientationForPresentation(_ pageViewController: UIPageViewController) -> UIInterfaceOrientation
}
protocol UIPageViewControllerDataSource : NSObjectProtocol {
  @available(iOS 5.0, *)
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
  @available(swift, obsoleted: 3, renamed: "pageViewController(_:viewControllerBefore:)")
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  @available(iOS 5.0, *)
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
  @available(swift, obsoleted: 3, renamed: "pageViewController(_:viewControllerAfter:)")
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
  @available(iOS 6.0, *)
  optional func presentationCount(for pageViewController: UIPageViewController) -> Int
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "presentationCount(for:)")
  optional func presentationCountForPageViewController(_ pageViewController: UIPageViewController) -> Int
  @available(iOS 6.0, *)
  optional func presentationIndex(for pageViewController: UIPageViewController) -> Int
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "presentationIndex(for:)")
  optional func presentationIndexForPageViewController(_ pageViewController: UIPageViewController) -> Int
}
