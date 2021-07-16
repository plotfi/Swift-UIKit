@_exported import Foundation

@available(iOS 14.0, *)
class UIColorWell : UIControl {

  /// Title for the color picker.
  ///
  /// Should explain what kind of color to pick. Example values are "Stroke Color" or "Fill Color".
  var title: String?

  /// Controls whether alpha is supported or not.
  ///
  /// If set to `NO` users are only able to pick fully opaque colors.
  var supportsAlpha: Bool

  /// Sets the selected color on the color picker and is updated when the user changes the selection.
  /// Does support KVO and does send `UIControlEventValueChanged`.
  var selectedColor: UIColor?
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}
