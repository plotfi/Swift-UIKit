@_exported import Foundation

@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UISplitViewController.DisplayMode")
typealias UISplitViewControllerDisplayMode = UISplitViewController.DisplayMode
extension UISplitViewController {
  @available(iOS 8.0, *)
  enum DisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UISplitViewController.DisplayMode { get }
    case secondaryOnly
    @available(swift, obsoleted: 3, renamed: "secondaryOnly")
    static var SecondaryOnly: UISplitViewController.DisplayMode { get }
    case oneBesideSecondary
    @available(swift, obsoleted: 3, renamed: "oneBesideSecondary")
    static var OneBesideSecondary: UISplitViewController.DisplayMode { get }
    case oneOverSecondary
    @available(swift, obsoleted: 3, renamed: "oneOverSecondary")
    static var OneOverSecondary: UISplitViewController.DisplayMode { get }
    @available(iOS 14.0, *)
    case twoBesideSecondary
    @available(iOS 14.0, *)
    @available(swift, obsoleted: 3, renamed: "twoBesideSecondary")
    static var TwoBesideSecondary: UISplitViewController.DisplayMode { get }
    @available(iOS 14.0, *)
    case twoOverSecondary
    @available(iOS 14.0, *)
    @available(swift, obsoleted: 3, renamed: "twoOverSecondary")
    static var TwoOverSecondary: UISplitViewController.DisplayMode { get }
    @available(iOS 14.0, *)
    case twoDisplaceSecondary
    @available(iOS 14.0, *)
    @available(swift, obsoleted: 3, renamed: "twoDisplaceSecondary")
    static var TwoDisplaceSecondary: UISplitViewController.DisplayMode { get }
    @available(iOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.secondaryOnly")
    static var primaryHidden: UISplitViewController.DisplayMode { get }
    @available(iOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.oneBesideSecondary")
    static var allVisible: UISplitViewController.DisplayMode { get }
    @available(iOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.oneOverSecondary")
    static var primaryOverlay: UISplitViewController.DisplayMode { get }
  }
  @available(iOS 11.0, *)
  enum PrimaryEdge : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case leading
    @available(swift, obsoleted: 3, renamed: "leading")
    static var Leading: UISplitViewController.PrimaryEdge { get }
    case trailing
    @available(swift, obsoleted: 3, renamed: "trailing")
    static var Trailing: UISplitViewController.PrimaryEdge { get }
  }
  @available(iOS 13.0, *)
  enum BackgroundStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UISplitViewController.BackgroundStyle { get }
    case sidebar
    @available(swift, obsoleted: 3, renamed: "sidebar")
    static var Sidebar: UISplitViewController.BackgroundStyle { get }
  }
  @available(iOS 14.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unspecified
    @available(swift, obsoleted: 3, renamed: "unspecified")
    static var Unspecified: UISplitViewController.Style { get }
    case doubleColumn
    @available(swift, obsoleted: 3, renamed: "doubleColumn")
    static var DoubleColumn: UISplitViewController.Style { get }
    case tripleColumn
    @available(swift, obsoleted: 3, renamed: "tripleColumn")
    static var TripleColumn: UISplitViewController.Style { get }
  }
  @available(iOS 14.0, *)
  enum Column : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case primary
    @available(swift, obsoleted: 3, renamed: "primary")
    static var Primary: UISplitViewController.Column { get }
    case supplementary
    @available(swift, obsoleted: 3, renamed: "supplementary")
    static var Supplementary: UISplitViewController.Column { get }
    case secondary
    @available(swift, obsoleted: 3, renamed: "secondary")
    static var Secondary: UISplitViewController.Column { get }
    case compact
    @available(swift, obsoleted: 3, renamed: "compact")
    static var Compact: UISplitViewController.Column { get }
  }
  @available(iOS 14.0, *)
  enum SplitBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UISplitViewController.SplitBehavior { get }
    case tile
    @available(swift, obsoleted: 3, renamed: "tile")
    static var Tile: UISplitViewController.SplitBehavior { get }
    case overlay
    @available(swift, obsoleted: 3, renamed: "overlay")
    static var Overlay: UISplitViewController.SplitBehavior { get }
    case displace
    @available(swift, obsoleted: 3, renamed: "displace")
    static var Displace: UISplitViewController.SplitBehavior { get }
  }
  @available(iOS 14.5, *)
  enum DisplayModeButtonVisibility : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UISplitViewController.DisplayModeButtonVisibility { get }
    case never
    @available(swift, obsoleted: 3, renamed: "never")
    static var Never: UISplitViewController.DisplayModeButtonVisibility { get }
    case always
    @available(swift, obsoleted: 3, renamed: "always")
    static var Always: UISplitViewController.DisplayModeButtonVisibility { get }
  }
  @available(iOS 8.0, *)
  class let automaticDimension: CGFloat
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UISplitViewController.PrimaryEdge")
typealias UISplitViewControllerPrimaryEdge = UISplitViewController.PrimaryEdge
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UISplitViewController.BackgroundStyle")
typealias UISplitViewControllerBackgroundStyle = UISplitViewController.BackgroundStyle
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UISplitViewController.Style")
typealias UISplitViewControllerStyle = UISplitViewController.Style
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UISplitViewController.Column")
typealias UISplitViewControllerColumn = UISplitViewController.Column
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UISplitViewController.SplitBehavior")
typealias UISplitViewControllerSplitBehavior = UISplitViewController.SplitBehavior
@available(iOS 14.5, *)
@available(swift, obsoleted: 3, renamed: "UISplitViewController.DisplayModeButtonVisibility")
typealias UISplitViewControllerDisplayModeButtonVisibility = UISplitViewController.DisplayModeButtonVisibility
@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UISplitViewController.automaticDimension")
let UISplitViewControllerAutomaticDimension: CGFloat
@available(iOS 3.2, *)
class UISplitViewController : UIViewController {
  init?(coder: NSCoder)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  @available(iOS 14.0, *)
  init(style: UISplitViewController.Style)
  @available(iOS 14.0, *)
  var style: UISplitViewController.Style { get }
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  @available(iOS 14.0, *)
  var showsSecondaryOnlyButton: Bool
  @available(iOS 14.0, *)
  var preferredSplitBehavior: UISplitViewController.SplitBehavior
  @available(iOS 14.0, *)
  var splitBehavior: UISplitViewController.SplitBehavior { get }
  @available(iOS 14.0, *)
  func setViewController(_ vc: UIViewController?, for column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "setViewController(_:for:)")
  func setViewController(_ vc: UIViewController?, forColumn column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  func viewController(for column: UISplitViewController.Column) -> UIViewController?
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "viewController(for:)")
  func viewControllerForColumn(_ column: UISplitViewController.Column) -> UIViewController?
  @available(iOS 14.0, *)
  func hide(_ column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "hide(_:)")
  func hideColumn(_ column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  func show(_ column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "show(_:)")
  func showColumn(_ column: UISplitViewController.Column)
  var viewControllers: [UIViewController]
  @available(iOS 5.1, *)
  var presentsWithGesture: Bool
  @available(iOS 8.0, *)
  var isCollapsed: Bool { get }
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "isCollapsed")
  var collapsed: Bool { get }
  @available(iOS 8.0, *)
  var preferredDisplayMode: UISplitViewController.DisplayMode
  @available(iOS 8.0, *)
  var displayMode: UISplitViewController.DisplayMode { get }
  @available(iOS 8.0, *)
  var displayModeButtonItem: UIBarButtonItem { get }
  @available(iOS 14.5, *)
  var displayModeButtonVisibility: UISplitViewController.DisplayModeButtonVisibility
  @available(iOS 8.0, *)
  var preferredPrimaryColumnWidthFraction: CGFloat
  @available(iOS 14.0, *)
  var preferredPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var minimumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var maximumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var primaryColumnWidth: CGFloat { get }
  @available(iOS 14.0, *)
  var preferredSupplementaryColumnWidthFraction: CGFloat
  @available(iOS 14.0, *)
  var preferredSupplementaryColumnWidth: CGFloat
  @available(iOS 14.0, *)
  var minimumSupplementaryColumnWidth: CGFloat
  @available(iOS 14.0, *)
  var maximumSupplementaryColumnWidth: CGFloat
  @available(iOS 14.0, *)
  var supplementaryColumnWidth: CGFloat { get }
  @available(iOS 11.0, *)
  var primaryEdge: UISplitViewController.PrimaryEdge
  @available(iOS 8.0, *)
  func show(_ vc: UIViewController, sender: Any?)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "show(_:sender:)")
  func showViewController(_ vc: UIViewController, sender: Any?)
  @available(iOS 8.0, *)
  func showDetailViewController(_ vc: UIViewController, sender: Any?)
  @available(iOS 13.0, *)
  var primaryBackgroundStyle: UISplitViewController.BackgroundStyle
  convenience init()
}
protocol UISplitViewControllerDelegate {
  @available(iOS 8.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willChangeTo displayMode: UISplitViewController.DisplayMode)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:willChangeTo:)")
  optional func splitViewController(_ svc: UISplitViewController, willChangeToDisplayMode displayMode: UISplitViewController.DisplayMode)
  @available(iOS 8.0, *)
  optional func targetDisplayModeForAction(in svc: UISplitViewController) -> UISplitViewController.DisplayMode
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "targetDisplayModeForAction(in:)")
  optional func targetDisplayModeForActionInSplitViewController(_ svc: UISplitViewController) -> UISplitViewController.DisplayMode
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, show vc: UIViewController, sender: Any?) -> Bool
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:show:sender:)")
  optional func splitViewController(_ splitViewController: UISplitViewController, showViewController vc: UIViewController, sender: Any?) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, showDetail vc: UIViewController, sender: Any?) -> Bool
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:showDetail:sender:)")
  optional func splitViewController(_ splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: Any?) -> Bool
  @available(iOS 8.0, *)
  optional func primaryViewController(forCollapsing splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "primaryViewController(forCollapsing:)")
  optional func primaryViewControllerForCollapsingSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func primaryViewController(forExpanding splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "primaryViewController(forExpanding:)")
  optional func primaryViewControllerForExpandingSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:collapseSecondary:onto:)")
  optional func splitViewController(_ splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, separateSecondaryFrom primaryViewController: UIViewController) -> UIViewController?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:separateSecondaryFrom:)")
  optional func splitViewController(_ splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
  @available(iOS 7.0, *)
  optional func splitViewControllerSupportedInterfaceOrientations(_ splitViewController: UISplitViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func splitViewControllerPreferredInterfaceOrientationForPresentation(_ splitViewController: UISplitViewController) -> UIInterfaceOrientation
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willHide aViewController: UIViewController, with barButtonItem: UIBarButtonItem, for pc: UIPopoverController)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:willHide:with:for:)")
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willHideViewController aViewController: UIViewController, withBarButtonItem barButtonItem: UIBarButtonItem, forPopoverController pc: UIPopoverController)
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willShow aViewController: UIViewController, invalidating barButtonItem: UIBarButtonItem)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:willShow:invalidating:)")
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willShowViewController aViewController: UIViewController, invalidatingBarButtonItem barButtonItem: UIBarButtonItem)
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  optional func splitViewController(_ svc: UISplitViewController, popoverController pc: UIPopoverController, willPresent aViewController: UIViewController)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:popoverController:willPresent:)")
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  optional func splitViewController(_ svc: UISplitViewController, popoverController pc: UIPopoverController, willPresentViewController aViewController: UIViewController)
  @available(iOS, introduced: 5.0, deprecated: 8.0)
  optional func splitViewController(_ svc: UISplitViewController, shouldHide vc: UIViewController, in orientation: UIInterfaceOrientation) -> Bool
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:shouldHide:in:)")
  @available(iOS, introduced: 5.0, deprecated: 8.0)
  optional func splitViewController(_ svc: UISplitViewController, shouldHideViewController vc: UIViewController, inOrientation orientation: UIInterfaceOrientation) -> Bool
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, topColumnForCollapsingToProposedTopColumn proposedTopColumn: UISplitViewController.Column) -> UISplitViewController.Column
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, displayModeForExpandingToProposedDisplayMode proposedDisplayMode: UISplitViewController.DisplayMode) -> UISplitViewController.DisplayMode
  @available(iOS 14.0, *)
  optional func splitViewControllerDidCollapse(_ svc: UISplitViewController)
  @available(iOS 14.0, *)
  optional func splitViewControllerDidExpand(_ svc: UISplitViewController)
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willShow column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:willShow:)")
  optional func splitViewController(_ svc: UISplitViewController, willShowColumn column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willHide column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "splitViewController(_:willHide:)")
  optional func splitViewController(_ svc: UISplitViewController, willHideColumn column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  optional func splitViewControllerInteractivePresentationGestureWillBegin(_ svc: UISplitViewController)
  @available(iOS 14.0, *)
  optional func splitViewControllerInteractivePresentationGestureDidEnd(_ svc: UISplitViewController)
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(iOS 8.0, *)
  func collapseSecondaryViewController(_ secondaryViewController: UIViewController, for splitViewController: UISplitViewController)
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "collapseSecondaryViewController(_:for:)")
  func collapseSecondaryViewController(_ secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  @available(iOS 8.0, *)
  func separateSecondaryViewController(for splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "separateSecondaryViewController(for:)")
  func separateSecondaryViewControllerForSplitViewController(_ splitViewController: UISplitViewController) -> UIViewController?
}
