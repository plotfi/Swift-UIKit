@_exported import Foundation

@available(iOS 9.0, *)
enum UIDynamicItemCollisionBoundsType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case rectangle
  @available(swift, obsoleted: 3, renamed: "rectangle")
  static var Rectangle: UIDynamicItemCollisionBoundsType { get }
  case ellipse
  @available(swift, obsoleted: 3, renamed: "ellipse")
  static var Ellipse: UIDynamicItemCollisionBoundsType { get }
  case path
  @available(swift, obsoleted: 3, renamed: "path")
  static var Path: UIDynamicItemCollisionBoundsType { get }
}
protocol UIDynamicItem : NSObjectProtocol {
  var center: CGPoint { get set }
  var bounds: CGRect { get }
  var transform: CGAffineTransform { get set }

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(iOS 9.0, *)
  optional var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
  optional var collisionBoundingPath: UIBezierPath { get }
}
@available(iOS 9.0, *)
class UIDynamicItemGroup : NSObject, UIDynamicItem {
  init(items: [UIDynamicItem])
  var items: [UIDynamicItem] { get }
  init()
  @available(iOS 9.0, *)
  var center: CGPoint
  @available(iOS 9.0, *)
  var bounds: CGRect { get }
  @available(iOS 9.0, *)
  var transform: CGAffineTransform

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
@available(iOS 7.0, *)
class UIDynamicBehavior : NSObject {
  func addChildBehavior(_ behavior: UIDynamicBehavior)
  func removeChildBehavior(_ behavior: UIDynamicBehavior)
  var childBehaviors: [UIDynamicBehavior] { get }
  var action: (() -> Void)?
  func willMove(to dynamicAnimator: UIDynamicAnimator?)
  @available(swift, obsoleted: 3, renamed: "willMove(to:)")
  func willMoveToAnimator(_ dynamicAnimator: UIDynamicAnimator?)
  var dynamicAnimator: UIDynamicAnimator? { get }
  init()
}
