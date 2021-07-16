@_exported import Foundation

@available(iOS 13.0, *)
protocol UILargeContentViewerItem : NSObjectProtocol {

  /// Returns whether the item shows the large content viewer.
  /// In general, only views that cannot scale for the full range of Dynamic Type sizes should return YES.
  /// For this property to take effect, the item or an ancestor view must have a UILargeContentViewerInteraction.
  var showsLargeContentViewer: Bool { get }

  /// Returns a title that should be shown in the large content viewer.
  var largeContentTitle: String? { get }

  /// Returns an image that should be shown in the large content viewer.
  var largeContentImage: UIImage? { get }

  /// Returns whether the image should be scaled to a larger size appropriate for the viewer.
  /// If not, the image will be shown at its intrinsic size.
  /// For best results when scaling, use a PDF asset with its "Preserve Vector Data" checkbox checked.
  var scalesLargeContentImage: Bool { get }

  /// Returns insets appropriate for positioning the image in the viewer so that it appears visually centered.
  var largeContentImageInsets: UIEdgeInsets { get }
}
extension UIView : UILargeContentViewerItem {
  @available(iOS 13.0, *)
  var showsLargeContentViewer: Bool
  @available(iOS 13.0, *)
  var largeContentTitle: String?
  @available(iOS 13.0, *)
  var largeContentImage: UIImage?
  @available(iOS 13.0, *)
  var scalesLargeContentImage: Bool
  @available(iOS 13.0, *)
  var largeContentImageInsets: UIEdgeInsets
}

/// UILargeContentViewerInteraction enables a gesture to present and dismiss the large content viewer on a device with relevant settings.
/// Use methods in <UIKit/UIInteraction.h> to add the interaction to an appropriate view, such as a custom tab bar.
@available(iOS 13.0, *)
class UILargeContentViewerInteraction : NSObject, UIInteraction {
  init(delegate: UILargeContentViewerInteractionDelegate?)
  weak var delegate: @sil_weak UILargeContentViewerInteractionDelegate? { get }

  /// Returns a gesture recognizer that can be used to set up simultaneous recognition or failure relationships with other gesture recognizers.
  var gestureRecognizerForExclusionRelationship: UIGestureRecognizer { get }

  /// Returns whether the large content viewer is enabled on the device.
  /// It is not necessary to check this value before adding a UILargeContentViewerInteraction to a view,
  /// but it may be helpful if you need to adjust the behavior of coexisting gesture handlers.
  /// For example, a button with a long press handler might increase its long press duration,
  /// so that a user can read text in the large content viewer first.
  class var isEnabled: Bool { get }

  /// Returns whether the large content viewer is enabled on the device.
  /// It is not necessary to check this value before adding a UILargeContentViewerInteraction to a view,
  /// but it may be helpful if you need to adjust the behavior of coexisting gesture handlers.
  /// For example, a button with a long press handler might increase its long press duration,
  /// so that a user can read text in the large content viewer first.
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  class var enabled: Bool { get }
  convenience init()
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
@available(iOS 13.0, *)
protocol UILargeContentViewerInteractionDelegate : NSObjectProtocol {

  /// Performs an action when the large content viewer gesture ends at the location of the given item.
  /// (The point in the interaction's view's coordinate system is also provided.)
  /// For example, you may wish to perform the action that would have occurred if the user had tapped on that item.
  /// If this is not implemented and the gesture ends at the location of a UIControl object, it will send a UIControlEventTouchUpInside event.
  /// This method is called only if the gesture ends successfully (not if it fails or gets canceled).
  optional func largeContentViewerInteraction(_ interaction: UILargeContentViewerInteraction, didEndOn item: UILargeContentViewerItem?, at point: CGPoint)

  /// Performs an action when the large content viewer gesture ends at the location of the given item.
  /// (The point in the interaction's view's coordinate system is also provided.)
  /// For example, you may wish to perform the action that would have occurred if the user had tapped on that item.
  /// If this is not implemented and the gesture ends at the location of a UIControl object, it will send a UIControlEventTouchUpInside event.
  /// This method is called only if the gesture ends successfully (not if it fails or gets canceled).
  @available(swift, obsoleted: 3, renamed: "largeContentViewerInteraction(_:didEndOn:at:)")
  optional func largeContentViewerInteraction(_ interaction: UILargeContentViewerInteraction, didEndOnItem item: UILargeContentViewerItem?, atPoint point: CGPoint)

  /// Returns the item at a given point in the interaction's view's coordinate system.
  /// If this is not implemented, -[UIView pointInside:withEvent:] will be called recursively on the interaction's view to find an appropriate view.
  optional func largeContentViewerInteraction(_ interaction: UILargeContentViewerInteraction, itemAt point: CGPoint) -> UILargeContentViewerItem?

  /// Returns the item at a given point in the interaction's view's coordinate system.
  /// If this is not implemented, -[UIView pointInside:withEvent:] will be called recursively on the interaction's view to find an appropriate view.
  @available(swift, obsoleted: 3, renamed: "largeContentViewerInteraction(_:itemAt:)")
  optional func largeContentViewerInteraction(_ interaction: UILargeContentViewerInteraction, itemAtPoint point: CGPoint) -> UILargeContentViewerItem?

  /// Returns the view controller whose region of the screen should be used to display the large content viewer.
  /// If this is not implemented, a view controller that contains the interaction's view will be chosen.
  optional func viewController(for interaction: UILargeContentViewerInteraction) -> UIViewController

  /// Returns the view controller whose region of the screen should be used to display the large content viewer.
  /// If this is not implemented, a view controller that contains the interaction's view will be chosen.
  @available(swift, obsoleted: 3, renamed: "viewController(for:)")
  optional func viewControllerForLargeContentViewerInteraction(_ interaction: UILargeContentViewerInteraction) -> UIViewController
}

/// Posted when the large content viewer gets enabled or disabled on the device.
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UILargeContentViewerInteraction.enabledStatusDidChangeNotification")
let UILargeContentViewerInteractionEnabledStatusDidChangeNotification: NSNotification.Name
extension UILargeContentViewerInteraction {

  /// Posted when the large content viewer gets enabled or disabled on the device.
  @available(iOS 13.0, *)
  class let enabledStatusDidChangeNotification: NSNotification.Name
}
