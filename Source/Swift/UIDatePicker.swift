@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIDatePicker.Mode")
typealias UIDatePickerMode = UIDatePicker.Mode
extension UIDatePicker {
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case time
    @available(swift, obsoleted: 3, renamed: "time")
    static var Time: UIDatePicker.Mode { get }
    case date
    @available(swift, obsoleted: 3, renamed: "date")
    static var Date: UIDatePicker.Mode { get }
    case dateAndTime
    @available(swift, obsoleted: 3, renamed: "dateAndTime")
    static var DateAndTime: UIDatePicker.Mode { get }
    case countDownTimer
    @available(swift, obsoleted: 3, renamed: "countDownTimer")
    static var CountDownTimer: UIDatePicker.Mode { get }
  }
}
@available(iOS 13.4, *)
enum UIDatePickerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// Automatically pick the best style available for the current platform & mode.
  case automatic

  /// Automatically pick the best style available for the current platform & mode.
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: UIDatePickerStyle { get }

  /// Use the wheels (UIPickerView) style. Editing occurs inline.
  case wheels

  /// Use the wheels (UIPickerView) style. Editing occurs inline.
  @available(swift, obsoleted: 3, renamed: "wheels")
  static var Wheels: UIDatePickerStyle { get }

  /// Use a compact style for the date picker. Editing occurs in an overlay.
  case compact

  /// Use a compact style for the date picker. Editing occurs in an overlay.
  @available(swift, obsoleted: 3, renamed: "compact")
  static var Compact: UIDatePickerStyle { get }

  /// Use a style for the date picker that allows editing in place.
  @available(iOS 14.0, *)
  case inline

  /// Use a style for the date picker that allows editing in place.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "inline")
  static var Inline: UIDatePickerStyle { get }
}
@available(iOS 2.0, *)
class UIDatePicker : UIControl, NSCoding {
  var datePickerMode: UIDatePicker.Mode
  var locale: Locale?
  var calendar: Calendar!
  var timeZone: TimeZone?
  var date: Date
  var minimumDate: Date?
  var maximumDate: Date?
  var countDownDuration: TimeInterval
  var minuteInterval: Int
  func setDate(_ date: Date, animated: Bool)

  /// Request a style for the date picker. If the style changed, then the date picker may need to be resized and will generate a layout pass to display correctly.
  @available(iOS 13.4, *)
  var preferredDatePickerStyle: UIDatePickerStyle

  /// The style that the date picker is using for its layout. This property always returns a concrete style (never automatic).
  @available(iOS 13.4, *)
  var datePickerStyle: UIDatePickerStyle { get }
  init(frame: CGRect)
  init?(coder: NSCoder)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}
