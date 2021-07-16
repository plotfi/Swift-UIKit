@_exported import Foundation

@available(iOS 13.4, *)
class UIPointerStyle : NSObject, NSCopying {

  /**
   * @abstract Applies the provided content effect and pointer shape within the current region.
   *
   * @param effect  The desired pointer effect.
   * @param shape   The desired pointer shape. If omitted, a pointer will be generated automatically from the effect's preview view.
   */
  convenience init(__effect effect: __UIPointerEffect, shape: __UIPointerShape?)

  /**
   * @abstract Applies the provided content effect and pointer shape within the current region.
   *
   * @param effect  The desired pointer effect.
   * @param shape   The desired pointer shape. If omitted, a pointer will be generated automatically from the effect's preview view.
   */
  @available(*, unavailable, renamed: "init(__effect:shape:)", message: "Not available in Swift")
  class func __styleWithEffect(_ effect: __UIPointerEffect, shape: __UIPointerShape?) -> Self

  /**
   * @abstract Morphs the pointer into the provided shape when hovering over the current region.
   *
   * @param shape  The desired pointer shape.
   * @param axes   Axes along which to recenter the pointer on touch up.
   */
  convenience init(__shape shape: __UIPointerShape, constrainedAxes axes: UIAxis)

  /**
   * @abstract Morphs the pointer into the provided shape when hovering over the current region.
   *
   * @param shape  The desired pointer shape.
   * @param axes   Axes along which to recenter the pointer on touch up.
   */
  @available(*, unavailable, renamed: "init(__shape:constrainedAxes:)", message: "Not available in Swift")
  class func __styleWithShape(_ shape: __UIPointerShape, constrainedAxes axes: UIAxis) -> Self

  /**
   * @abstract Hides the pointer when hovering over the current region.
   */
  class func hidden() -> Self

  /**
   * @abstract Hides the pointer when hovering over the current region.
   */
  @available(swift, obsoleted: 3, renamed: "hidden()")
  class func hiddenPointerStyle() -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  @available(iOS 13.4, *)
  func copy(with zone: NSZone? = nil) -> Any
}

@available(iOS 13.4, *)
extension UIPointerStyle {
  convenience init(effect: UIPointerEffect, shape: UIPointerShape? = nil)
  convenience init(shape: UIPointerShape, constrainedAxes: UIAxis = [])
}
@available(iOS 13.4, *)
class __UIPointerEffect : NSObject, NSCopying {
  @NSCopying var preview: UITargetedPreview { get }

  /**
   * @abstract Creates a pointer content effect with the given preview's view.
   *
   * @param preview  A UITargetedPreview object describing a view with which to construct the effect.
   *
   * @discussion UIPointerEffect attempts to determine the appropriate effect for the given preview automatically.
   *             Use one of its subclasses to request a specific system-provided effect.
   */
  convenience init(preview: UITargetedPreview)

  /**
   * @abstract Creates a pointer content effect with the given preview's view.
   *
   * @param preview  A UITargetedPreview object describing a view with which to construct the effect.
   *
   * @discussion UIPointerEffect attempts to determine the appropriate effect for the given preview automatically.
   *             Use one of its subclasses to request a specific system-provided effect.
   */
  @available(*, unavailable, renamed: "init(preview:)", message: "Not available in Swift")
  class func effectWithPreview(_ preview: UITargetedPreview) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  @available(iOS 13.4, *)
  func copy(with zone: NSZone? = nil) -> Any
}

/// Pointer slides under the given view and morphs into the view's shape
@available(iOS 13.4, *)
class __UIPointerHighlightEffect : __UIPointerEffect {

  /**
   * @abstract Creates a pointer content effect with the given preview's view.
   *
   * @param preview  A UITargetedPreview object describing a view with which to construct the effect.
   *
   * @discussion UIPointerEffect attempts to determine the appropriate effect for the given preview automatically.
   *             Use one of its subclasses to request a specific system-provided effect.
   */
  convenience init(preview: UITargetedPreview)
  @available(*, unavailable)
  init()
}

/// Pointer slides under the given view and disappears as the view scales up and gains a shadow.
@available(iOS 13.4, *)
class __UIPointerLiftEffect : __UIPointerEffect {

  /**
   * @abstract Creates a pointer content effect with the given preview's view.
   *
   * @param preview  A UITargetedPreview object describing a view with which to construct the effect.
   *
   * @discussion UIPointerEffect attempts to determine the appropriate effect for the given preview automatically.
   *             Use one of its subclasses to request a specific system-provided effect.
   */
  convenience init(preview: UITargetedPreview)
  @available(*, unavailable)
  init()
}
@available(iOS 13.4, *)
enum __UIPointerEffectTintMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: __UIPointerEffectTintMode { get }
  case overlay
  @available(swift, obsoleted: 3, renamed: "overlay")
  static var Overlay: __UIPointerEffectTintMode { get }
  case underlay
  @available(swift, obsoleted: 3, renamed: "underlay")
  static var Underlay: __UIPointerEffectTintMode { get }
}

/// Pointer retains the system shape while over the given view. Visual changes applied to the view are dictated by the effect's properties.
@available(iOS 13.4, *)
class __UIPointerHoverEffect : __UIPointerEffect {
  var preferredTintMode: __UIPointerEffectTintMode
  var prefersShadow: Bool
  var prefersScaledContent: Bool

  /**
   * @abstract Creates a pointer content effect with the given preview's view.
   *
   * @param preview  A UITargetedPreview object describing a view with which to construct the effect.
   *
   * @discussion UIPointerEffect attempts to determine the appropriate effect for the given preview automatically.
   *             Use one of its subclasses to request a specific system-provided effect.
   */
  convenience init(preview: UITargetedPreview)
  @available(*, unavailable)
  init()
}
@available(iOS 13.4, *)
class __UIPointerShape : NSObject, NSCopying {

  /**
   * @abstract Morphs the pointer to the given path.
   */
  convenience init(path: UIBezierPath)

  /**
   * @abstract Morphs the pointer to the given path.
   */
  @available(*, unavailable, renamed: "init(path:)", message: "Not available in Swift")
  class func shapeWithPath(_ path: UIBezierPath) -> Self

  /**
   * @abstract Morphs the pointer to a rounded rectangle with the provided rect and the standard system corner radius.
   *
   * @param rect  CGRect describing the pointer's frame. If used alongside a content effect, this rect must be in the effect's
   *              preview's container view's coordinate space. Otherwise, it is centered about the pointer's current location
   *              and the rect's origin is interpreted as an offset.
   */
  convenience init(roundedRect rect: CGRect)

  /**
   * @abstract Morphs the pointer to a rounded rectangle with the provided rect and the standard system corner radius.
   *
   * @param rect  CGRect describing the pointer's frame. If used alongside a content effect, this rect must be in the effect's
   *              preview's container view's coordinate space. Otherwise, it is centered about the pointer's current location
   *              and the rect's origin is interpreted as an offset.
   */
  @available(*, unavailable, renamed: "init(roundedRect:)", message: "Not available in Swift")
  class func shapeWithRoundedRect(_ rect: CGRect) -> Self

  /**
   * @abstract Morphs the pointer to a rounded rectangle with the provided rect and cornerRadius.
   *
   * @param rect          CGRect describing the pointer's frame. If used alongside a content effect, this rect must be in
   *                      the effect's preview's container view's coordinate space. Otherwise, it is centered about the
   *                      pointer's current location and the rect's origin is interpreted as an offset.
   * @param cornerRadius  Corner radius to apply to the pointer.
   */
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)

  /**
   * @abstract Morphs the pointer to a rounded rectangle with the provided rect and cornerRadius.
   *
   * @param rect          CGRect describing the pointer's frame. If used alongside a content effect, this rect must be in
   *                      the effect's preview's container view's coordinate space. Otherwise, it is centered about the
   *                      pointer's current location and the rect's origin is interpreted as an offset.
   * @param cornerRadius  Corner radius to apply to the pointer.
   */
  @available(*, unavailable, renamed: "init(roundedRect:cornerRadius:)", message: "Not available in Swift")
  class func shapeWithRoundedRect(_ rect: CGRect, cornerRadius: CGFloat) -> Self

  /**
   * @abstract Morphs the pointer to a beam with the given length and axis.
   *
   * @param length  The beam's length. Limited to the region's width or height, depending on the beam's axis.
   * @param axis    The axis along which to draw the beam. Axis must be either UIAxisVertical or UIAxisHorizontal.
   */
  class func beam(withPreferredLength length: CGFloat, axis: UIAxis) -> Self

  /**
   * @abstract Morphs the pointer to a beam with the given length and axis.
   *
   * @param length  The beam's length. Limited to the region's width or height, depending on the beam's axis.
   * @param axis    The axis along which to draw the beam. Axis must be either UIAxisVertical or UIAxisHorizontal.
   */
  @available(swift, obsoleted: 3, renamed: "beam(withPreferredLength:axis:)")
  class func beamWithPreferredLength(_ length: CGFloat, axis: UIAxis) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  @available(iOS 13.4, *)
  func copy(with zone: NSZone? = nil) -> Any
}
