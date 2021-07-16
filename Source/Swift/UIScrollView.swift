@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIScrollView.IndicatorStyle")
typealias UIScrollViewIndicatorStyle = UIScrollView.IndicatorStyle
extension UIScrollView {
  enum IndicatorStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UIScrollView.IndicatorStyle { get }
    case black
    @available(swift, obsoleted: 3, renamed: "black")
    static var Black: UIScrollView.IndicatorStyle { get }
    case white
    @available(swift, obsoleted: 3, renamed: "white")
    static var White: UIScrollView.IndicatorStyle { get }
  }
  @available(iOS 7.0, *)
  enum KeyboardDismissMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIScrollView.KeyboardDismissMode { get }
    case onDrag
    @available(swift, obsoleted: 3, renamed: "onDrag")
    static var OnDrag: UIScrollView.KeyboardDismissMode { get }
    case interactive
    @available(swift, obsoleted: 3, renamed: "interactive")
    static var Interactive: UIScrollView.KeyboardDismissMode { get }
  }
  enum IndexDisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UIScrollView.IndexDisplayMode { get }
    case alwaysHidden
    @available(swift, obsoleted: 3, renamed: "alwaysHidden")
    static var AlwaysHidden: UIScrollView.IndexDisplayMode { get }
  }
  @available(iOS 11.0, *)
  enum ContentInsetAdjustmentBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UIScrollView.ContentInsetAdjustmentBehavior { get }
    case scrollableAxes
    @available(swift, obsoleted: 3, renamed: "scrollableAxes")
    static var ScrollableAxes: UIScrollView.ContentInsetAdjustmentBehavior { get }
    case never
    @available(swift, obsoleted: 3, renamed: "never")
    static var Never: UIScrollView.ContentInsetAdjustmentBehavior { get }
    case always
    @available(swift, obsoleted: 3, renamed: "always")
    static var Always: UIScrollView.ContentInsetAdjustmentBehavior { get }
  }
  struct DecelerationRate : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: CGFloat)
    let rawValue: CGFloat
    typealias RawValue = CGFloat
  }
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIScrollView.KeyboardDismissMode")
typealias UIScrollViewKeyboardDismissMode = UIScrollView.KeyboardDismissMode
@available(swift, obsoleted: 4.2, renamed: "UIScrollView.IndexDisplayMode")
typealias UIScrollViewIndexDisplayMode = UIScrollView.IndexDisplayMode
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIScrollView.ContentInsetAdjustmentBehavior")
typealias UIScrollViewContentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior
@available(swift, obsoleted: 3, renamed: "UIScrollView.DecelerationRate")
typealias UIScrollViewDecelerationRate = UIScrollView.DecelerationRate
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIScrollView.DecelerationRate.normal")
let UIScrollViewDecelerationRateNormal: UIScrollView.DecelerationRate
extension UIScrollView.DecelerationRate {
  @available(iOS 3.0, *)
  static let normal: UIScrollView.DecelerationRate
  @available(iOS 3.0, *)
  static let fast: UIScrollView.DecelerationRate
}
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIScrollView.DecelerationRate.fast")
let UIScrollViewDecelerationRateFast: UIScrollView.DecelerationRate
@available(iOS 2.0, *)
class UIScrollView : UIView, NSCoding, UIFocusItemScrollableContainer {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  @available(iOS 11.0, *)
  var adjustedContentInset: UIEdgeInsets { get }
  @available(iOS 11.0, *)
  func adjustedContentInsetDidChange()
  @available(iOS 11.0, *)
  var contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior
  @available(iOS 13.0, *)
  var automaticallyAdjustsScrollIndicatorInsets: Bool
  @available(iOS 11.0, *)
  var contentLayoutGuide: UILayoutGuide { get }
  @available(iOS 11.0, *)
  var frameLayoutGuide: UILayoutGuide { get }
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var isDirectionalLockEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isDirectionalLockEnabled")
  var directionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var isPagingEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isPagingEnabled")
  var pagingEnabled: Bool
  var isScrollEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isScrollEnabled")
  var scrollEnabled: Bool
  var showsVerticalScrollIndicator: Bool
  var showsHorizontalScrollIndicator: Bool
  var indicatorStyle: UIScrollView.IndicatorStyle
  @available(iOS 11.1, *)
  var verticalScrollIndicatorInsets: UIEdgeInsets
  @available(iOS 11.1, *)
  var horizontalScrollIndicatorInsets: UIEdgeInsets
  var scrollIndicatorInsets: UIEdgeInsets
  @available(iOS 3.0, *)
  var decelerationRate: UIScrollView.DecelerationRate
  var indexDisplayMode: UIScrollView.IndexDisplayMode
  func setContentOffset(_ contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(_ rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var isTracking: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isTracking")
  var tracking: Bool { get }
  var isDragging: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isDragging")
  var dragging: Bool { get }
  var isDecelerating: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isDecelerating")
  var decelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(_ touches: Set<UITouch>, with event: UIEvent?, in view: UIView) -> Bool
  @available(swift, obsoleted: 3, renamed: "touchesShouldBegin(_:with:in:)")
  func touchesShouldBegin(_ touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancel(in view: UIView) -> Bool
  @available(swift, obsoleted: 3, renamed: "touchesShouldCancel(in:)")
  func touchesShouldCancelInContentView(_ view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  @available(iOS 3.0, *)
  var zoomScale: CGFloat
  @available(iOS 3.0, *)
  func setZoomScale(_ scale: CGFloat, animated: Bool)
  @available(iOS 3.0, *)
  func zoom(to rect: CGRect, animated: Bool)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "zoom(to:animated:)")
  func zoomToRect(_ rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var isZooming: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isZooming")
  var zooming: Bool { get }
  var isZoomBouncing: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isZoomBouncing")
  var zoomBouncing: Bool { get }
  var scrollsToTop: Bool
  @available(iOS 5.0, *)
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  @available(iOS 5.0, *)
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  var directionalPressGestureRecognizer: UIGestureRecognizer { get }
  @available(iOS 7.0, *)
  var keyboardDismissMode: UIScrollView.KeyboardDismissMode
  @available(iOS 10.0, *)
  var refreshControl: UIRefreshControl?
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()

  /// The visible size of this scrollable container.
  @available(iOS 12.0, *)
  var visibleSize: CGSize { get }
}
protocol UIScrollViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  optional func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  optional func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  optional func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(swift, obsoleted: 3, renamed: "viewForZooming(in:)")
  optional func viewForZoomingInScrollView(_ scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  optional func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "scrollViewWillBeginZooming(_:with:)")
  optional func scrollViewWillBeginZooming(_ scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(swift, obsoleted: 3, renamed: "scrollViewDidEndZooming(_:with:atScale:)")
  optional func scrollViewDidEndZooming(_ scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  optional func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  optional func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(iOS 11.0, *)
  optional func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView)
}
