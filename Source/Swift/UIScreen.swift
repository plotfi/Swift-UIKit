@_exported import Foundation

@available(iOS 3.2, *)
@available(swift, obsoleted: 3, renamed: "UIScreen.didConnectNotification")
let UIScreenDidConnectNotification: NSNotification.Name
extension UIScreen {
  @available(iOS 3.2, *)
  class let didConnectNotification: NSNotification.Name
  @available(iOS 3.2, *)
  class let didDisconnectNotification: NSNotification.Name
  @available(iOS 3.2, *)
  class let modeDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  class let brightnessDidChangeNotification: NSNotification.Name
  @available(iOS 11.0, *)
  class let capturedDidChangeNotification: NSNotification.Name
  enum OverscanCompensation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case scale
    @available(swift, obsoleted: 3, renamed: "scale")
    static var Scale: UIScreen.OverscanCompensation { get }
    case insetBounds
    @available(swift, obsoleted: 3, renamed: "insetBounds")
    static var InsetBounds: UIScreen.OverscanCompensation { get }
    @available(iOS 9.0, *)
    case none
    @available(iOS 9.0, *)
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIScreen.OverscanCompensation { get }
    @available(iOS, introduced: 5.0, deprecated: 9.0, message: "Use UIScreenOverscanCompensationNone")
    static var insetApplicationFrame: UIScreen.OverscanCompensation { get }
  }
}
@available(iOS 3.2, *)
@available(swift, obsoleted: 3, renamed: "UIScreen.didDisconnectNotification")
let UIScreenDidDisconnectNotification: NSNotification.Name
@available(iOS 3.2, *)
@available(swift, obsoleted: 3, renamed: "UIScreen.modeDidChangeNotification")
let UIScreenModeDidChangeNotification: NSNotification.Name
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIScreen.brightnessDidChangeNotification")
let UIScreenBrightnessDidChangeNotification: NSNotification.Name
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIScreen.capturedDidChangeNotification")
let UIScreenCapturedDidChangeNotification: NSNotification.Name
@available(swift, obsoleted: 4.2, renamed: "UIScreen.OverscanCompensation")
typealias UIScreenOverscanCompensation = UIScreen.OverscanCompensation
@available(iOS 2.0, *)
class UIScreen : NSObject, UITraitEnvironment {
  @available(iOS 3.2, *)
  class var screens: [UIScreen] { get }
  class var main: UIScreen { get }
  @available(swift, obsoleted: 3, renamed: "main")
  class var mainScreen: UIScreen { get }
  var bounds: CGRect { get }
  @available(iOS 4.0, *)
  var scale: CGFloat { get }
  @available(iOS 3.2, *)
  var availableModes: [UIScreenMode] { get }
  @available(iOS 4.3, *)
  var preferredMode: UIScreenMode? { get }
  @available(iOS 3.2, *)
  var currentMode: UIScreenMode?
  @available(iOS 5.0, *)
  var overscanCompensation: UIScreen.OverscanCompensation
  @available(iOS 9.0, *)
  var overscanCompensationInsets: UIEdgeInsets { get }
  @available(iOS 4.3, *)
  var mirrored: UIScreen? { get }
  @available(iOS 4.3, *)
  @available(swift, obsoleted: 3, renamed: "mirrored")
  var mirroredScreen: UIScreen? { get }
  @available(iOS 11.0, *)
  var isCaptured: Bool { get }
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "isCaptured")
  var captured: Bool { get }
  @available(iOS 5.0, *)
  var brightness: CGFloat
  @available(iOS 5.0, *)
  var wantsSoftwareDimming: Bool
  @available(iOS 8.0, *)
  var coordinateSpace: UICoordinateSpace { get }
  @available(iOS 8.0, *)
  var fixedCoordinateSpace: UICoordinateSpace { get }
  @available(iOS 8.0, *)
  var nativeBounds: CGRect { get }
  @available(iOS 8.0, *)
  var nativeScale: CGFloat { get }
  @available(iOS 4.0, *)
  func displayLink(withTarget target: Any, selector sel: Selector) -> CADisplayLink?
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "displayLink(withTarget:selector:)")
  func displayLinkWithTarget(_ target: Any, selector sel: Selector) -> CADisplayLink?
  @available(iOS 10.3, *)
  var maximumFramesPerSecond: Int { get }
  @available(iOS 13.0, *)
  var calibratedLatency: CFTimeInterval { get }
  @available(iOS 10.0, *)
  weak var focusedItem: @sil_weak UIFocusItem? { get }
  @available(iOS 9.0, *)
  weak var focusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  var supportsFocus: Bool { get }
  @available(iOS, introduced: 2.0, deprecated: 9.0)
  var applicationFrame: CGRect { get }
  init()
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /** To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
}
extension UIScreen {
  @available(iOS 7.0, *)
  func snapshotView(afterScreenUpdates afterUpdates: Bool) -> UIView
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "snapshotView(afterScreenUpdates:)")
  func snapshotViewAfterScreenUpdates(_ afterUpdates: Bool) -> UIView
}
