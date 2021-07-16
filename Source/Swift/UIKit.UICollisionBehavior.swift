@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UICollisionBehavior.Mode")
typealias UICollisionBehaviorMode = UICollisionBehavior.Mode
extension UICollisionBehavior {
  @available(iOS 7.0, *)
  struct Mode : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UICollisionBehavior.Mode
    typealias ArrayLiteralElement = UICollisionBehavior.Mode
    static var items: UICollisionBehavior.Mode { get }
    @available(swift, obsoleted: 3, renamed: "items")
    static var Items: UICollisionBehavior.Mode { get }
    static var boundaries: UICollisionBehavior.Mode { get }
    @available(swift, obsoleted: 3, renamed: "boundaries")
    static var Boundaries: UICollisionBehavior.Mode { get }
    static var everything: UICollisionBehavior.Mode { get }
    @available(swift, obsoleted: 3, renamed: "everything")
    static var Everything: UICollisionBehavior.Mode { get }
  }
}
protocol UICollisionBehaviorDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, with item2: UIDynamicItem, at p: CGPoint)
  @available(swift, obsoleted: 3, renamed: "collisionBehavior(_:beganContactFor:with:at:)")
  optional func collisionBehavior(_ behavior: UICollisionBehavior, beganContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem, atPoint p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, endedContactFor item1: UIDynamicItem, with item2: UIDynamicItem)
  @available(swift, obsoleted: 3, renamed: "collisionBehavior(_:endedContactFor:with:)")
  optional func collisionBehavior(_ behavior: UICollisionBehavior, endedContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem)
  @available(iOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint)
  @available(swift, obsoleted: 3, renamed: "collisionBehavior(_:beganContactFor:withBoundaryIdentifier:at:)")
  optional func collisionBehavior(_ behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, atPoint p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(_ behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?)
  @available(swift, obsoleted: 3, renamed: "collisionBehavior(_:endedContactFor:withBoundaryIdentifier:)")
  optional func collisionBehavior(_ behavior: UICollisionBehavior, endedContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?)
}
@available(iOS 7.0, *)
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehavior.Mode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundary(with insets: UIEdgeInsets)
  @available(swift, obsoleted: 3, renamed: "setTranslatesReferenceBoundsIntoBoundary(with:)")
  func setTranslatesReferenceBoundsIntoBoundaryWithInsets(_ insets: UIEdgeInsets)
  func addBoundary(withIdentifier identifier: NSCopying, for bezierPath: UIBezierPath)
  @available(swift, obsoleted: 3, renamed: "addBoundary(withIdentifier:for:)")
  func addBoundaryWithIdentifier(_ identifier: NSCopying, forPath bezierPath: UIBezierPath)
  func addBoundary(withIdentifier identifier: NSCopying, from p1: CGPoint, to p2: CGPoint)
  @available(swift, obsoleted: 3, renamed: "addBoundary(withIdentifier:from:to:)")
  func addBoundaryWithIdentifier(_ identifier: NSCopying, fromPoint p1: CGPoint, toPoint p2: CGPoint)
  func boundary(withIdentifier identifier: NSCopying) -> UIBezierPath?
  @available(swift, obsoleted: 3, renamed: "boundary(withIdentifier:)")
  func boundaryWithIdentifier(_ identifier: NSCopying) -> UIBezierPath?
  func removeBoundary(withIdentifier identifier: NSCopying)
  @available(swift, obsoleted: 3, renamed: "removeBoundary(withIdentifier:)")
  func removeBoundaryWithIdentifier(_ identifier: NSCopying)
  var boundaryIdentifiers: [NSCopying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}
