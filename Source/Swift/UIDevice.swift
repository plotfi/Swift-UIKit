@_exported import Foundation

enum UIDeviceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unknown
  @available(swift, obsoleted: 3, renamed: "unknown")
  static var Unknown: UIDeviceOrientation { get }
  case portrait
  @available(swift, obsoleted: 3, renamed: "portrait")
  static var Portrait: UIDeviceOrientation { get }
  case portraitUpsideDown
  @available(swift, obsoleted: 3, renamed: "portraitUpsideDown")
  static var PortraitUpsideDown: UIDeviceOrientation { get }
  case landscapeLeft
  @available(swift, obsoleted: 3, renamed: "landscapeLeft")
  static var LandscapeLeft: UIDeviceOrientation { get }
  case landscapeRight
  @available(swift, obsoleted: 3, renamed: "landscapeRight")
  static var LandscapeRight: UIDeviceOrientation { get }
  case faceUp
  @available(swift, obsoleted: 3, renamed: "faceUp")
  static var FaceUp: UIDeviceOrientation { get }
  case faceDown
  @available(swift, obsoleted: 3, renamed: "faceDown")
  static var FaceDown: UIDeviceOrientation { get }
}
@available(swift, obsoleted: 4.2, renamed: "UIDevice.BatteryState")
typealias UIDeviceBatteryState = UIDevice.BatteryState
enum UIUserInterfaceIdiom : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unspecified
  @available(swift, obsoleted: 3, renamed: "unspecified")
  static var Unspecified: UIUserInterfaceIdiom { get }
  @available(iOS 3.2, *)
  case phone
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "phone")
  static var Phone: UIUserInterfaceIdiom { get }
  @available(iOS 3.2, *)
  case pad
  @available(iOS 3.2, *)
  @available(swift, obsoleted: 3, renamed: "pad")
  static var Pad: UIUserInterfaceIdiom { get }
  @available(iOS 9.0, *)
  case tv
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "tv")
  static var TV: UIUserInterfaceIdiom { get }
  @available(iOS 9.0, *)
  case carPlay
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "carPlay")
  static var CarPlay: UIUserInterfaceIdiom { get }
  @available(iOS 14.0, *)
  case mac
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "mac")
  static var Mac: UIUserInterfaceIdiom { get }
}
@available(swift, obsoleted: 3, renamed: "getter:UIDeviceOrientation.isPortrait(self:)")
func UIDeviceOrientationIsPortrait(_ orientation: UIDeviceOrientation) -> Bool
extension UIDeviceOrientation {
  var isPortrait: Bool { get }
  var isLandscape: Bool { get }
  var isFlat: Bool { get }
  var isValidInterfaceOrientation: Bool { get }
}
@available(swift, obsoleted: 3, renamed: "getter:UIDeviceOrientation.isLandscape(self:)")
func UIDeviceOrientationIsLandscape(_ orientation: UIDeviceOrientation) -> Bool
@available(swift, obsoleted: 3, renamed: "getter:UIDeviceOrientation.isFlat(self:)")
func UIDeviceOrientationIsFlat(_ orientation: UIDeviceOrientation) -> Bool
@available(swift, obsoleted: 3, renamed: "getter:UIDeviceOrientation.isValidInterfaceOrientation(self:)")
func UIDeviceOrientationIsValidInterfaceOrientation(_ orientation: UIDeviceOrientation) -> Bool
@available(iOS 2.0, *)
class UIDevice : NSObject {
  class var current: UIDevice { get }
  @available(swift, obsoleted: 3, renamed: "current")
  class var currentDevice: UIDevice { get }
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  var orientation: UIDeviceOrientation { get }
  @available(iOS 6.0, *)
  var identifierForVendor: UUID? { get }
  var isGeneratingDeviceOrientationNotifications: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isGeneratingDeviceOrientationNotifications")
  var generatesDeviceOrientationNotifications: Bool { get }
  func beginGeneratingDeviceOrientationNotifications()
  func endGeneratingDeviceOrientationNotifications()
  @available(iOS 3.0, *)
  var isBatteryMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isBatteryMonitoringEnabled")
  var batteryMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var batteryState: UIDevice.BatteryState { get }
  @available(iOS 3.0, *)
  var batteryLevel: Float { get }
  @available(iOS 3.0, *)
  var isProximityMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "isProximityMonitoringEnabled")
  var proximityMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var proximityState: Bool { get }
  @available(iOS 4.0, *)
  var isMultitaskingSupported: Bool { get }
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "isMultitaskingSupported")
  var multitaskingSupported: Bool { get }
  @available(iOS 3.2, *)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(iOS 4.2, *)
  func playInputClick()
  init()
}
protocol UIInputViewAudioFeedback : NSObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use -[UIDevice userInterfaceIdiom] directly.")
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
@available(swift, obsoleted: 3, renamed: "UIDevice.orientationDidChangeNotification")
let UIDeviceOrientationDidChangeNotification: NSNotification.Name
extension UIDevice {
  class let orientationDidChangeNotification: NSNotification.Name
  @available(iOS 3.0, *)
  class let batteryStateDidChangeNotification: NSNotification.Name
  @available(iOS 3.0, *)
  class let batteryLevelDidChangeNotification: NSNotification.Name
  @available(iOS 3.0, *)
  class let proximityStateDidChangeNotification: NSNotification.Name
  enum BatteryState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unknown
    @available(swift, obsoleted: 3, renamed: "unknown")
    static var Unknown: UIDevice.BatteryState { get }
    case unplugged
    @available(swift, obsoleted: 3, renamed: "unplugged")
    static var Unplugged: UIDevice.BatteryState { get }
    case charging
    @available(swift, obsoleted: 3, renamed: "charging")
    static var Charging: UIDevice.BatteryState { get }
    case full
    @available(swift, obsoleted: 3, renamed: "full")
    static var Full: UIDevice.BatteryState { get }
  }
}
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIDevice.batteryStateDidChangeNotification")
let UIDeviceBatteryStateDidChangeNotification: NSNotification.Name
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIDevice.batteryLevelDidChangeNotification")
let UIDeviceBatteryLevelDidChangeNotification: NSNotification.Name
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UIDevice.proximityStateDidChangeNotification")
let UIDeviceProximityStateDidChangeNotification: NSNotification.Name
