@_exported import Foundation

@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UISwitch.Style")
typealias UISwitchStyle = UISwitch.Style
extension UISwitch {
  @available(iOS 14.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case automatic
    @available(swift, obsoleted: 3, renamed: "automatic")
    static var Automatic: UISwitch.Style { get }
    case checkbox
    @available(swift, obsoleted: 3, renamed: "checkbox")
    static var Checkbox: UISwitch.Style { get }
    case sliding
    @available(swift, obsoleted: 3, renamed: "sliding")
    static var Sliding: UISwitch.Style { get }
  }
}
@available(iOS 2.0, *)
class UISwitch : UIControl, NSCoding {
  @available(iOS 5.0, *)
  var onTintColor: UIColor?
  @available(iOS 6.0, *)
  var thumbTintColor: UIColor?
  @available(iOS 6.0, *)
  var onImage: UIImage?
  @available(iOS 6.0, *)
  var offImage: UIImage?

  /// The title displayed alongside the switch, positioned appropriately for the @c UIUserInterfaceIdiom.
  /// @note This property is only supported for Catalyst in the Mac idiom.
  @available(iOS 14.0, *)
  var title: String?

  /// The switch's display style. This property always returns a concrete, resolved style (never UISwitchStyleAutomatic).
  @available(iOS 14.0, *)
  var style: UISwitch.Style { get }

  /// Request a style for the switch. If the style changed, then the switch may resize.
  @available(iOS 14.0, *)
  var preferredStyle: UISwitch.Style
  var isOn: Bool
  @available(swift, obsoleted: 3, renamed: "isOn")
  var on: Bool
  init(frame: CGRect)
  init?(coder: NSCoder)
  func setOn(_ on: Bool, animated: Bool)

  /// Initializes the control and adds primaryAction for the UIControlEventPrimaryActionTriggered control event. Subclasses of UIControl may alter or add behaviors around the usage of primaryAction, see subclass documentation of this initializer for additional information.
  @available(iOS 14.0, *)
  convenience init(frame: CGRect, primaryAction: UIAction?)
  convenience init()
}
