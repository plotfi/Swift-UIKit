@_exported import Foundation

var NSLAYOUTANCHOR_H: Int32 { get }
@available(iOS 9.0, *)
class NSLayoutAnchor<AnchorType> : NSObject where AnchorType : AnyObject {
  func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(equalTo:)")
  func constraintEqualToAnchor(_ anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(greaterThanOrEqualTo:)")
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(lessThanOrEqualTo:)")
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint
  func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(equalTo:constant:)")
  func constraintEqualToAnchor(_ anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(greaterThanOrEqualTo:constant:)")
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(lessThanOrEqualTo:constant:)")
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat) -> NSLayoutConstraint
  @available(iOS, unavailable)
  var name: String { get }
  @available(iOS, unavailable)
  weak var item: @sil_weak AnyObject? { get }
  @available(iOS, unavailable)
  var hasAmbiguousLayout: Bool { get }
  @available(iOS, unavailable)
  var constraintsAffectingLayout: [NSLayoutConstraint] { get }
  init()
}
@available(iOS 9.0, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor> {
  @available(iOS 10.0, *)
  func anchorWithOffset(to otherAnchor: NSLayoutXAxisAnchor) -> NSLayoutDimension
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "anchorWithOffset(to:)")
  func anchorWithOffsetToAnchor(_ otherAnchor: NSLayoutXAxisAnchor) -> NSLayoutDimension
  init()
}
@available(iOS 9.0, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor> {
  @available(iOS 10.0, *)
  func anchorWithOffset(to otherAnchor: NSLayoutYAxisAnchor) -> NSLayoutDimension
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "anchorWithOffset(to:)")
  func anchorWithOffsetToAnchor(_ otherAnchor: NSLayoutYAxisAnchor) -> NSLayoutDimension
  init()
}
@available(iOS 9.0, *)
class NSLayoutDimension : NSLayoutAnchor<NSLayoutDimension> {
  func constraint(equalToConstant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(equalToConstant:)")
  func constraintEqualToConstant(_ c: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(greaterThanOrEqualToConstant:)")
  func constraintGreaterThanOrEqualToConstant(_ c: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualToConstant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(lessThanOrEqualToConstant:)")
  func constraintLessThanOrEqualToConstant(_ c: CGFloat) -> NSLayoutConstraint
  func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(equalTo:multiplier:)")
  func constraintEqualToAnchor(_ anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(greaterThanOrEqualTo:multiplier:)")
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(lessThanOrEqualTo:multiplier:)")
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutDimension, multiplier m: CGFloat) -> NSLayoutConstraint
  func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(equalTo:multiplier:constant:)")
  func constraintEqualToAnchor(_ anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(greaterThanOrEqualTo:multiplier:constant:)")
  func constraintGreaterThanOrEqualToAnchor(_ anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  @available(swift, obsoleted: 3, renamed: "constraint(lessThanOrEqualTo:multiplier:constant:)")
  func constraintLessThanOrEqualToAnchor(_ anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint
  init()
}
extension NSLayoutXAxisAnchor {
  @available(iOS 11.0, *)
  func constraint(equalToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "constraint(equalToSystemSpacingAfter:multiplier:)")
  func constraintEqualToSystemSpacingAfter(_ anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "constraint(equalToSystemSpacingAfter:multiplier:)")
  func constraintEqualToSystemSpacingAfterAnchor(_ anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  func constraint(greaterThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "constraint(greaterThanOrEqualToSystemSpacingAfter:multiplier:)")
  func constraintGreaterThanOrEqualToSystemSpacingAfter(_ anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "constraint(greaterThanOrEqualToSystemSpacingAfter:multiplier:)")
  func constraintGreaterThanOrEqualToSystemSpacingAfterAnchor(_ anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  func constraint(lessThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "constraint(lessThanOrEqualToSystemSpacingAfter:multiplier:)")
  func constraintLessThanOrEqualToSystemSpacingAfter(_ anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "constraint(lessThanOrEqualToSystemSpacingAfter:multiplier:)")
  func constraintLessThanOrEqualToSystemSpacingAfterAnchor(_ anchor: NSLayoutXAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
}
extension NSLayoutYAxisAnchor {
  @available(iOS 11.0, *)
  func constraint(equalToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "constraint(equalToSystemSpacingBelow:multiplier:)")
  func constraintEqualToSystemSpacingBelow(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "constraint(equalToSystemSpacingBelow:multiplier:)")
  func constraintEqualToSystemSpacingBelowAnchor(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  func constraint(greaterThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "constraint(greaterThanOrEqualToSystemSpacingBelow:multiplier:)")
  func constraintGreaterThanOrEqualToSystemSpacingBelow(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "constraint(greaterThanOrEqualToSystemSpacingBelow:multiplier:)")
  func constraintGreaterThanOrEqualToSystemSpacingBelowAnchor(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  func constraint(lessThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 4.2, renamed: "constraint(lessThanOrEqualToSystemSpacingBelow:multiplier:)")
  func constraintLessThanOrEqualToSystemSpacingBelow(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "constraint(lessThanOrEqualToSystemSpacingBelow:multiplier:)")
  func constraintLessThanOrEqualToSystemSpacingBelowAnchor(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat) -> NSLayoutConstraint
}
