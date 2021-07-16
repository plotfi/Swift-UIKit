@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UITouch.Phase")
typealias UITouchPhase = UITouch.Phase
extension UITouch {
  enum Phase : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case began
    @available(swift, obsoleted: 3, renamed: "began")
    static var Began: UITouch.Phase { get }
    case moved
    @available(swift, obsoleted: 3, renamed: "moved")
    static var Moved: UITouch.Phase { get }
    case stationary
    @available(swift, obsoleted: 3, renamed: "stationary")
    static var Stationary: UITouch.Phase { get }
    case ended
    @available(swift, obsoleted: 3, renamed: "ended")
    static var Ended: UITouch.Phase { get }
    case cancelled
    @available(swift, obsoleted: 3, renamed: "cancelled")
    static var Cancelled: UITouch.Phase { get }
    @available(iOS 13.4, *)
    case regionEntered
    @available(iOS 13.4, *)
    @available(swift, obsoleted: 3, renamed: "regionEntered")
    static var RegionEntered: UITouch.Phase { get }
    @available(iOS 13.4, *)
    case regionMoved
    @available(iOS 13.4, *)
    @available(swift, obsoleted: 3, renamed: "regionMoved")
    static var RegionMoved: UITouch.Phase { get }
    @available(iOS 13.4, *)
    case regionExited
    @available(iOS 13.4, *)
    @available(swift, obsoleted: 3, renamed: "regionExited")
    static var RegionExited: UITouch.Phase { get }
  }
  @available(iOS 9.0, *)
  enum TouchType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case direct
    @available(swift, obsoleted: 3, renamed: "direct")
    static var Direct: UITouch.TouchType { get }
    case indirect
    @available(swift, obsoleted: 3, renamed: "indirect")
    static var Indirect: UITouch.TouchType { get }
    @available(iOS 9.1, *)
    case pencil
    @available(iOS 9.1, *)
    @available(swift, obsoleted: 3, renamed: "pencil")
    static var Pencil: UITouch.TouchType { get }
    @available(iOS 9.1, *)
    static var stylus: UITouch.TouchType { get }
    @available(iOS 13.4, *)
    case indirectPointer
    @available(iOS 13.4, *)
    @available(swift, obsoleted: 3, renamed: "indirectPointer")
    static var IndirectPointer: UITouch.TouchType { get }
  }
  @available(iOS 9.1, *)
  struct Properties : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    typealias RawValue = Int
    typealias Element = UITouch.Properties
    typealias ArrayLiteralElement = UITouch.Properties
    static var force: UITouch.Properties { get }
    @available(swift, obsoleted: 3, renamed: "force")
    static var Force: UITouch.Properties { get }
    static var azimuth: UITouch.Properties { get }
    @available(swift, obsoleted: 3, renamed: "azimuth")
    static var Azimuth: UITouch.Properties { get }
    static var altitude: UITouch.Properties { get }
    @available(swift, obsoleted: 3, renamed: "altitude")
    static var Altitude: UITouch.Properties { get }
    static var location: UITouch.Properties { get }
    @available(swift, obsoleted: 3, renamed: "location")
    static var Location: UITouch.Properties { get }
  }
}
enum UIForceTouchCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case unknown
  @available(swift, obsoleted: 3, renamed: "unknown")
  static var Unknown: UIForceTouchCapability { get }
  case unavailable
  @available(swift, obsoleted: 3, renamed: "unavailable")
  static var Unavailable: UIForceTouchCapability { get }
  case available
  @available(swift, obsoleted: 3, renamed: "available")
  static var Available: UIForceTouchCapability { get }
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITouch.TouchType")
typealias UITouchType = UITouch.TouchType
@available(iOS 9.1, *)
@available(swift, obsoleted: 4.2, renamed: "UITouch.Properties")
typealias UITouchProperties = UITouch.Properties
@available(iOS 2.0, *)
class UITouch : NSObject {
  var timestamp: TimeInterval { get }
  var phase: UITouch.Phase { get }
  var tapCount: Int { get }
  @available(iOS 9.0, *)
  var type: UITouch.TouchType { get }
  @available(iOS 8.0, *)
  var majorRadius: CGFloat { get }
  @available(iOS 8.0, *)
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func location(in view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "location(in:)")
  func locationInView(_ view: UIView?) -> CGPoint
  func previousLocation(in view: UIView?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "previousLocation(in:)")
  func previousLocationInView(_ view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func preciseLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  @available(swift, obsoleted: 3, renamed: "preciseLocation(in:)")
  func preciseLocationInView(_ view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func precisePreviousLocation(in view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  @available(swift, obsoleted: 3, renamed: "precisePreviousLocation(in:)")
  func precisePreviousLocationInView(_ view: UIView?) -> CGPoint
  @available(iOS 9.0, *)
  var force: CGFloat { get }
  @available(iOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(iOS 9.1, *)
  func azimuthAngle(in view: UIView?) -> CGFloat
  @available(iOS 9.1, *)
  @available(swift, obsoleted: 3, renamed: "azimuthAngle(in:)")
  func azimuthAngleInView(_ view: UIView?) -> CGFloat
  @available(iOS 9.1, *)
  func azimuthUnitVector(in view: UIView?) -> CGVector
  @available(iOS 9.1, *)
  @available(swift, obsoleted: 3, renamed: "azimuthUnitVector(in:)")
  func azimuthUnitVectorInView(_ view: UIView?) -> CGVector
  @available(iOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(iOS 9.1, *)
  var estimationUpdateIndex: NSNumber? { get }
  @available(iOS 9.1, *)
  var estimatedProperties: UITouch.Properties { get }
  @available(iOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouch.Properties { get }
  init()
}
