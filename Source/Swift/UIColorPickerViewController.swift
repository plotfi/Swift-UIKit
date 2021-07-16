@_exported import Foundation

@available(iOS 14.0, *)
protocol UIColorPickerViewControllerDelegate : NSObjectProtocol {

  /// Called when the `selectedColor` changes.
  optional func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController)

  /// In presentations (except popovers) the color picker shows a close button. If the close button is tapped,
  /// the view controller is dismissed and `colorPickerViewControllerDidFinish:` is called. Can be used to
  /// animate alongside the dismissal.
  optional func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController)
}
@available(iOS 14.0, *)
class UIColorPickerViewController : UIViewController {
  weak var delegate: @sil_weak UIColorPickerViewControllerDelegate?

  /// Sets the selected color on the color picker and is updated when the user changes the selection.
  /// Does support KVO.
  var selectedColor: UIColor

  /// Controls whether the color picker shows an alpha slider or not.
  ///
  /// If set to `NO` users are only able to pick fully opaque colors.
  var supportsAlpha: Bool
  @available(*, unavailable)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init()
  init?(coder: NSCoder)
}
