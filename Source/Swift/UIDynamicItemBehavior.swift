@_exported import Foundation

@available(iOS 7.0, *)
class UIDynamicItemBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var elasticity: CGFloat
  var friction: CGFloat
  var density: CGFloat
  var resistance: CGFloat
  var angularResistance: CGFloat

  /**
   Specifies the charge associated with the item behavior. Charge determines the degree to which a dynamic item is affected by
   electric and magnetic fields. Note that this is a unitless quantity, it is up to the developer to
   set charge and field strength appropriately. Defaults to 0.0
   */
  @available(iOS 9.0, *)
  var charge: CGFloat

  /**
   If an item is anchored, it can participate in collisions, but will not exhibit
   any dynamic response. i.e. The item will behave more like a collision boundary.
   The default is NO
   */
  @available(iOS 9.0, *)
  var isAnchored: Bool

  /**
   If an item is anchored, it can participate in collisions, but will not exhibit
   any dynamic response. i.e. The item will behave more like a collision boundary.
   The default is NO
   */
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "isAnchored")
  var anchored: Bool
  var allowsRotation: Bool
  func addLinearVelocity(_ velocity: CGPoint, for item: UIDynamicItem)
  @available(swift, obsoleted: 3, renamed: "addLinearVelocity(_:for:)")
  func addLinearVelocity(_ velocity: CGPoint, forItem item: UIDynamicItem)
  func linearVelocity(for item: UIDynamicItem) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "linearVelocity(for:)")
  func linearVelocityForItem(_ item: UIDynamicItem) -> CGPoint
  func addAngularVelocity(_ velocity: CGFloat, for item: UIDynamicItem)
  @available(swift, obsoleted: 3, renamed: "addAngularVelocity(_:for:)")
  func addAngularVelocity(_ velocity: CGFloat, forItem item: UIDynamicItem)
  func angularVelocity(for item: UIDynamicItem) -> CGFloat
  @available(swift, obsoleted: 3, renamed: "angularVelocity(for:)")
  func angularVelocityForItem(_ item: UIDynamicItem) -> CGFloat
  convenience init()
}
