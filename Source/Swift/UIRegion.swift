@_exported import Foundation

@available(iOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {

  /** A shared infinite region
   */
  class var infinite: UIRegion { get }

  /** A shared infinite region
   */
  @available(swift, obsoleted: 3, renamed: "infinite")
  class var infiniteRegion: UIRegion { get }

  /** Create a circular region with radius
   */
  init(radius: CGFloat)

  /** Create a rectangular region of size.
   */
  init(size: CGSize)

  /** Create a new region that is the inverse of the current region.
   The inverse of the infiniteRegion is an empty region.
   Subclasses of UIRegion need to provide an implementation of inverseRegion.
   */
  func inverse() -> Self

  /** Create a new region that is the inverse of the current region.
   The inverse of the infiniteRegion is an empty region.
   Subclasses of UIRegion need to provide an implementation of inverseRegion.
   */
  @available(swift, obsoleted: 3, renamed: "inverse()")
  func inverseRegion() -> Self

  /** Create a new region that is the original region plus the supplied region
   */
  func byUnion(with region: UIRegion) -> Self

  /** Create a new region that is the original region plus the supplied region
   */
  @available(swift, obsoleted: 3, renamed: "byUnion(with:)")
  func regionByUnionWithRegion(_ region: UIRegion) -> Self

  /** Create a new region that is the original region minus the supplied region
   */
  func byDifference(from region: UIRegion) -> Self

  /** Create a new region that is the original region minus the supplied region
   */
  @available(swift, obsoleted: 3, renamed: "byDifference(from:)")
  func regionByDifferenceFromRegion(_ region: UIRegion) -> Self

  /** Create a new region that is the region covered by the original region and the supplied region
   */
  func byIntersection(with region: UIRegion) -> Self

  /** Create a new region that is the region covered by the original region and the supplied region
   */
  @available(swift, obsoleted: 3, renamed: "byIntersection(with:)")
  func regionByIntersectionWithRegion(_ region: UIRegion) -> Self

  /** Test for containment
   */
  func contains(_ point: CGPoint) -> Bool

  /** Test for containment
   */
  @available(swift, obsoleted: 3, renamed: "contains(_:)")
  func containsPoint(_ point: CGPoint) -> Bool
  init()
  @available(iOS 9.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 9.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
