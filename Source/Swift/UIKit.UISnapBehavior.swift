@_exported import Foundation

@available(iOS 7.0, *)
class UISnapBehavior : UIDynamicBehavior {
  init(item: UIDynamicItem, snapTo point: CGPoint)
  @available(swift, obsoleted: 3, renamed: "init(item:snapTo:)")
  init(item: UIDynamicItem, snapToPoint point: CGPoint)
  @available(iOS 9.0, *)
  var snapPoint: CGPoint
  var damping: CGFloat
  convenience init()
}
