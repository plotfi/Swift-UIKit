@_exported import Foundation

@available(iOS, introduced: 3.2, deprecated: 9.0, message: "UIPopoverController is deprecated. Popovers are now implemented as UIViewController presentations. Use a modal presentation style of UIModalPresentationPopover and UIPopoverPresentationController.")
class UIPopoverController : NSObject, UIAppearanceContainer {
  init(contentViewController viewController: UIViewController)
  weak var delegate: @sil_weak UIPopoverControllerDelegate?
  var contentViewController: UIViewController
  func setContentView(_ viewController: UIViewController, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "setContentView(_:animated:)")
  func setContentViewController(_ viewController: UIViewController, animated: Bool)
  var contentSize: CGSize
  @available(swift, obsoleted: 3, renamed: "contentSize")
  var popoverContentSize: CGSize
  func setContentSize(_ size: CGSize, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "setContentSize(_:animated:)")
  func setPopoverContentSize(_ size: CGSize, animated: Bool)
  var isPopoverVisible: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isPopoverVisible")
  var popoverVisible: Bool { get }
  var arrowDirection: UIPopoverArrowDirection { get }
  @available(swift, obsoleted: 3, renamed: "arrowDirection")
  var popoverArrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  func present(from rect: CGRect, in view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "present(from:in:permittedArrowDirections:animated:)")
  func presentPopoverFromRect(_ rect: CGRect, inView view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func present(from item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  @available(swift, obsoleted: 3, renamed: "present(from:permittedArrowDirections:animated:)")
  func presentPopoverFromBarButtonItem(_ item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func dismiss(animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismiss(animated:)")
  func dismissPopoverAnimated(_ animated: Bool)
  @available(iOS 7.0, *)
  @NSCopying var backgroundColor: UIColor?
  @available(iOS 5.0, *)
  var layoutMargins: UIEdgeInsets
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "layoutMargins")
  var popoverLayoutMargins: UIEdgeInsets
  @available(iOS 5.0, *)
  var backgroundViewClass: AnyClass?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundViewClass")
  var popoverBackgroundViewClass: AnyClass?
  init()
}
protocol UIPopoverControllerDelegate : NSObjectProtocol {
  @available(iOS, introduced: 3.2, deprecated: 9.0)
  optional func popoverControllerShouldDismissPopover(_ popoverController: UIPopoverController) -> Bool
  @available(iOS, introduced: 3.2, deprecated: 9.0)
  optional func popoverControllerDidDismissPopover(_ popoverController: UIPopoverController)
  @available(iOS, introduced: 7.0, deprecated: 9.0)
  optional func popoverController(_ popoverController: UIPopoverController, willRepositionPopoverTo rect: UnsafeMutablePointer<CGRect>, in view: AutoreleasingUnsafeMutablePointer<UIView>)
  @available(swift, obsoleted: 3, renamed: "popoverController(_:willRepositionPopoverTo:in:)")
  @available(iOS, introduced: 7.0, deprecated: 9.0)
  optional func popoverController(_ popoverController: UIPopoverController, willRepositionPopoverToRect rect: UnsafeMutablePointer<CGRect>, inView view: AutoreleasingUnsafeMutablePointer<UIView>)
}
