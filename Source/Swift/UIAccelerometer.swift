@_exported import Foundation

@available(iOS, introduced: 2.0, deprecated: 13.0, message: "UIAcceleration has been replaced by the CoreMotion framework")
typealias UIAccelerationValue = Double
@available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "UIAcceleration has been replaced by the CoreMotion framework")
class UIAcceleration : NSObject {
  var timestamp: TimeInterval { get }
  var x: UIAccelerationValue { get }
  var y: UIAccelerationValue { get }
  var z: UIAccelerationValue { get }
  init()
}
@available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "UIAccelerometer has been replaced by the CoreMotion framework")
class UIAccelerometer : NSObject {
  class func shared() -> UIAccelerometer
  @available(swift, obsoleted: 3, renamed: "shared()")
  class func sharedAccelerometer() -> UIAccelerometer
  var updateInterval: TimeInterval
  weak var delegate: @sil_weak UIAccelerometerDelegate?
  init()
}
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "UIAcceleration has been replaced by the CoreMotion framework")
protocol UIAccelerometerDelegate : NSObjectProtocol {
  @available(iOS, unavailable, introduced: 2.0, deprecated: 5.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  optional func accelerometer(_ accelerometer: UIAccelerometer, didAccelerate acceleration: UIAcceleration)
}
