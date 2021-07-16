@_exported import Foundation

@available(iOS 13.4, *)
class UIPointerRegion : NSObject, NSCopying {
  var rect: CGRect { get }
  var __identifier: NSObjectProtocol? { get }

  /**
   * @abstract Creates a UIPointerRegion with the supplied rect and optional identifier.
   *
   * @param rect        This region's rect. Must be in the pointer interaction's view's coordinate space.
   * @param identifier  Optional identifier that may be used to identify this region in subsequent pointer interaction delegate calls.
  */
  convenience init(__rect rect: CGRect, identifier: NSObjectProtocol?)

  /**
   * @abstract Creates a UIPointerRegion with the supplied rect and optional identifier.
   *
   * @param rect        This region's rect. Must be in the pointer interaction's view's coordinate space.
   * @param identifier  Optional identifier that may be used to identify this region in subsequent pointer interaction delegate calls.
  */
  @available(*, unavailable, renamed: "init(__rect:identifier:)", message: "Not available in Swift")
  class func __regionWithRect(_ rect: CGRect, identifier: NSObjectProtocol?) -> Self
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  @available(iOS 13.4, *)
  func copy(with zone: NSZone? = nil) -> Any
}

@available(iOS 13.4, *)
extension UIPointerRegion {
  convenience init(rect: CGRect, identifier: AnyHashable? = nil)
  var identifier: AnyHashable? { get }
}
