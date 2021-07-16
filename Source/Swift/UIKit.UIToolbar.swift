@_exported import Foundation

@available(iOS 2.0, *)
class UIToolbar : UIView, UIBarPositioning {
  var barStyle: UIBarStyle
  var items: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isTranslucent")
  var translucent: Bool
  func setItems(_ items: [UIBarButtonItem]?, animated: Bool)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(forToolbarPosition:barMetrics:)")
  func backgroundImageForToolbarPosition(_ topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setShadowImage(_ shadowImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition)
  @available(iOS 6.0, *)
  func shadowImage(forToolbarPosition topOrBottom: UIBarPosition) -> UIImage?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "shadowImage(forToolbarPosition:)")
  func shadowImageForToolbarPosition(_ topOrBottom: UIBarPosition) -> UIImage?

  /// Describes the appearance attributes for the toolbar to use when it is displayed with its standard height.
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UIToolbarAppearance

  /// Describes the appearance attributes for the toolbar to use when it is displayed with its compact height. If not set, the standardAppearance will be used instead.
  @available(iOS 13.0, *)
  @NSCopying var compactAppearance: UIToolbarAppearance?
  @available(iOS 7.0, *)
  weak var delegate: @sil_weak UIToolbarDelegate?
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init()
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UIToolbarDelegate : UIBarPositioningDelegate {
}
