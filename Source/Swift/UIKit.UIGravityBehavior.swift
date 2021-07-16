@_exported import Foundation

@available(iOS 7.0, *)
class UIGravityBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var gravityDirection: CGVector
  var angle: CGFloat
  var magnitude: CGFloat
  func setAngle(_ angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
