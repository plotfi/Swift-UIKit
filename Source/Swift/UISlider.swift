@_exported import Foundation

@available(iOS 2.0, *)
class UISlider : UIControl, NSCoding {
  var value: Float
  var minimumValue: Float
  var maximumValue: Float
  var minimumValueImage: UIImage?
  var maximumValueImage: UIImage?
  var isContinuous: Bool
  @available(swift, obsoleted: 3, renamed: "isContinuous")
  var continuous: Bool
  @available(iOS 5.0, *)
  var minimumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var maximumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var thumbTintColor: UIColor?
  func setValue(_ value: Float, animated: Bool)
  func setThumbImage(_ image: UIImage?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setThumbImage(_:for:)")
  func setThumbImage(_ image: UIImage?, forState state: UIControl.State)
  func setMinimumTrackImage(_ image: UIImage?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setMinimumTrackImage(_:for:)")
  func setMinimumTrackImage(_ image: UIImage?, forState state: UIControl.State)
  func setMaximumTrackImage(_ image: UIImage?, for state: UIControl.State)
  @available(swift, obsoleted: 3, renamed: "setMaximumTrackImage(_:for:)")
  func setMaximumTrackImage(_ image: UIImage?, forState state: UIControl.State)
  func thumbImage(for state: UIControl.State) -> UIImage?
  @available(swift, obsoleted: 3, renamed: "thumbImage(for:)")
  func thumbImageForState(_ state: UIControl.State) -> UIImage?
  func minimumTrackImage(for state: UIControl.State) -> UIImage?
  @available(swift, obsoleted: 3, renamed: "minimumTrackImage(for:)")
  func minimumTrackImageForState(_ state: UIControl.State) -> UIImage?
  func maximumTrackImage(for state: UIControl.State) -> UIImage?
  @available(swift, obsoleted: 3, renamed: "maximumTrackImage(for:)")
  func maximumTrackImageForState(_ state: UIControl.State) -> UIImage?
  var currentThumbImage: UIImage? { get }
  var currentMinimumTrackImage: UIImage? { get }
  var currentMaximumTrackImage: UIImage? { get }
  func minimumValueImageRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "minimumValueImageRect(forBounds:)")
  func minimumValueImageRectForBounds(_ bounds: CGRect) -> CGRect
  func maximumValueImageRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "maximumValueImageRect(forBounds:)")
  func maximumValueImageRectForBounds(_ bounds: CGRect) -> CGRect
  func trackRect(forBounds bounds: CGRect) -> CGRect
  @available(swift, obsoleted: 3, renamed: "trackRect(forBounds:)")
  func trackRectForBounds(_ bounds: CGRect) -> CGRect
  func thumbRect(forBounds bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect
  @available(swift, obsoleted: 3, renamed: "thumbRect(forBounds:trackRect:value:)")
  func thumbRectForBounds(_ bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}
