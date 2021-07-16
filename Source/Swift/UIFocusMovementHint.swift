@_exported import Foundation


/// Provides information about the current state of hinting for the focused item.
@available(iOS 12.0, *)
class UIFocusMovementHint : NSObject, NSCopying {

  /// Value between {-1.0, -1.0} and {1.0, 1.0} representing how close focus is to moving in a particular direction.
  var movementDirection: CGVector { get }

  /// A 3D transform representing the perspective matrix that should be applied to match the system interaction hinting. Assumes a 0..1 near/far plane.
  var perspectiveTransform: CATransform3D { get }

  /// A vector representing the X and Y axis rotation expressed in radians that should be applied to match the system interaction hinting.
  var rotation: CGVector { get }

  /// A vector representing the X and Y axis translation expressed in points that should be applied to match the system interaction hinting.
  var translation: CGVector { get }

  /// A 3D transform that contains the combined transformations of perspective, rotation and translation.
  var interactionTransform: CATransform3D { get }
  @available(*, unavailable)
  init!()
  @available(*, unavailable)
  class func new() -> Self!
  @available(iOS 12.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
