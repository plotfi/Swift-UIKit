@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIPushBehavior.Mode")
typealias UIPushBehaviorMode = UIPushBehavior.Mode
extension UIPushBehavior {
  @available(iOS 7.0, *)
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case continuous
    @available(swift, obsoleted: 3, renamed: "continuous")
    static var Continuous: UIPushBehavior.Mode { get }
    case instantaneous
    @available(swift, obsoleted: 3, renamed: "instantaneous")
    static var Instantaneous: UIPushBehavior.Mode { get }
  }
}
@available(iOS 7.0, *)
class UIPushBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem], mode: UIPushBehavior.Mode)
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  func targetOffsetFromCenter(for item: UIDynamicItem) -> UIOffset
  @available(swift, obsoleted: 3, renamed: "targetOffsetFromCenter(for:)")
  func targetOffsetFromCenterForItem(_ item: UIDynamicItem) -> UIOffset
  func setTargetOffsetFromCenter(_ o: UIOffset, for item: UIDynamicItem)
  @available(swift, obsoleted: 3, renamed: "setTargetOffsetFromCenter(_:for:)")
  func setTargetOffsetFromCenter(_ o: UIOffset, forItem item: UIDynamicItem)
  var mode: UIPushBehavior.Mode { get }
  var active: Bool
  var angle: CGFloat
  var magnitude: CGFloat
  var pushDirection: CGVector
  func setAngle(_ angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
