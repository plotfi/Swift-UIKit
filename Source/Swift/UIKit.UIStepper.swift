@_exported import Foundation

@available(iOS 5.0, *)
class UIStepper : UIControl {
  var isContinuous: Bool
  @available(swift, obsoleted: 3, renamed: "isContinuous")
  var continuous: Bool
  var autorepeat: Bool
  var wraps: Bool
  var value: Double
  var minimumValue: Double
  var maximumValue: Double
  var stepValue: Double
  @available(iOS 6.0, *)
  func setBackgroundImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "setBackgroundImage(_:for:)")
  func setBackgroundImage(_ image: UIImage?, forState state: UIControl.State)
  @available(iOS 6.0, *)
  func backgroundImage(for state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "backgroundImage(for:)")
  func backgroundImageForState(_ state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func setDividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State)
  @available(iOS 6.0, *)
  func dividerImage(forLeftSegmentState state: UIControl.State, rightSegmentState state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "dividerImage(forLeftSegmentState:rightSegmentState:)")
  func dividerImageForLeftSegmentState(_ state: UIControl.State, rightSegmentState state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func setIncrementImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "setIncrementImage(_:for:)")
  func setIncrementImage(_ image: UIImage?, forState state: UIControl.State)
  @available(iOS 6.0, *)
  func incrementImage(for state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "incrementImage(for:)")
  func incrementImageForState(_ state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  func setDecrementImage(_ image: UIImage?, for state: UIControl.State)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "setDecrementImage(_:for:)")
  func setDecrementImage(_ image: UIImage?, forState state: UIControl.State)
  @available(iOS 6.0, *)
  func decrementImage(for state: UIControl.State) -> UIImage?
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "decrementImage(for:)")
  func decrementImageForState(_ state: UIControl.State) -> UIImage?
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}
