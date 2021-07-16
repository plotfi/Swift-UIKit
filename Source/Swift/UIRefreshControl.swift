@_exported import Foundation

@available(iOS 6.0, *)
class UIRefreshControl : UIControl {
  init()
  var isRefreshing: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isRefreshing")
  var refreshing: Bool { get }
  var tintColor: UIColor!
  var attributedTitle: NSAttributedString?
  @available(iOS 6.0, *)
  func beginRefreshing()
  @available(iOS 6.0, *)
  func endRefreshing()
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
}
