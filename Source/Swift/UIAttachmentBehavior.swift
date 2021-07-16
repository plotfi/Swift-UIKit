@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIAttachmentBehavior.AttachmentType")
typealias UIAttachmentBehaviorType = UIAttachmentBehavior.AttachmentType
extension UIAttachmentBehavior {
  @available(iOS 7.0, *)
  enum AttachmentType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case items
    @available(swift, obsoleted: 3, renamed: "items")
    static var Items: UIAttachmentBehavior.AttachmentType { get }
    case anchor
    @available(swift, obsoleted: 3, renamed: "anchor")
    static var Anchor: UIAttachmentBehavior.AttachmentType { get }
  }
}
struct UIFloatRange {
  var minimum: CGFloat
  var maximum: CGFloat
  init()
  init(minimum: CGFloat, maximum: CGFloat)
}

extension UIFloatRange : Equatable {
  @_transparent static func == (lhs: UIFloatRange, rhs: UIFloatRange) -> Bool
}

extension UIFloatRange : Codable {
  init(from decoder: Decoder) throws
  func encode(to encoder: Encoder) throws
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIFloatRange.zero")
let UIFloatRangeZero: UIFloatRange
extension UIFloatRange {
  @available(iOS 9.0, *)
  static let zero: UIFloatRange
  @available(iOS 9.0, *)
  static let infinite: UIFloatRange
  @available(iOS 9.0, *)
  var isInfinite: Bool { get }
  /*not inherited*/ init(minimum: CGFloat, maximum: CGFloat)
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIFloatRange.infinite")
let UIFloatRangeInfinite: UIFloatRange
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "getter:UIFloatRange.isInfinite(self:)")
func UIFloatRangeIsInfinite(_ range: UIFloatRange) -> Bool
@available(swift, obsoleted: 3, renamed: "UIFloatRange.init(minimum:maximum:)")
func UIFloatRangeMake(_ minimum: CGFloat, _ maximum: CGFloat) -> UIFloatRange
func __UIFloatRangeIsEqualToRange(_ range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool
@available(iOS 7.0, *)
class UIAttachmentBehavior : UIDynamicBehavior {
  convenience init(item: UIDynamicItem, attachedToAnchor point: CGPoint)
  init(item: UIDynamicItem, offsetFromCenter offset: UIOffset, attachedToAnchor point: CGPoint)
  convenience init(item item1: UIDynamicItem, attachedTo item2: UIDynamicItem)
  @available(swift, obsoleted: 3, renamed: "init(item:attachedTo:)")
  convenience init(item item1: UIDynamicItem, attachedToItem item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)
  @available(swift, obsoleted: 3, renamed: "init(item:offsetFromCenter:attachedTo:offsetFromCenter:)")
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)

  /**
   A sliding attachment allows for relative translation of two items along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local coordinate system.
   @param axis Axis of allowed relative translation between local anchor point. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(iOS 9.0, *)
  class func slidingAttachment(with item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /**
   A sliding attachment allows for relative translation of two items along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local coordinate system.
   @param axis Axis of allowed relative translation between local anchor point. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "slidingAttachment(with:attachedTo:attachmentAnchor:axisOfTranslation:)")
  class func slidingAttachmentWithItem(_ item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /**
   A sliding attachment allows for translation of the item along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The dynamic item connected by the attachment behavior.
   @param point The point for the item will be anchored by the attachment.
   @param axis Axis of allowed translation for the item. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(iOS 9.0, *)
  class func slidingAttachment(with item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /**
   A sliding attachment allows for translation of the item along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The dynamic item connected by the attachment behavior.
   @param point The point for the item will be anchored by the attachment.
   @param axis Axis of allowed translation for the item. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "slidingAttachment(with:attachmentAnchor:axisOfTranslation:)")
  class func slidingAttachmentWithItem(_ item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /**
   A limit attachment imposes a maximum distance between two dynamic items, as if they were connected by a rope.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param offset1 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param offset2 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @see length
   */
  @available(iOS 9.0, *)
  class func limitAttachment(with item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self

  /**
   A limit attachment imposes a maximum distance between two dynamic items, as if they were connected by a rope.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param offset1 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param offset2 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @see length
   */
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "limitAttachment(with:offsetFromCenter:attachedTo:offsetFromCenter:)")
  class func limitAttachmentWithItem(_ item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self

  /**
   A fixed attachment fuses two dynamic items together at a reference point. 
   Fixed attachments are useful for creating complex shapes that can be broken apart later.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local coordinate system.
   */
  @available(iOS 9.0, *)
  class func fixedAttachment(with item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self

  /**
   A fixed attachment fuses two dynamic items together at a reference point. 
   Fixed attachments are useful for creating complex shapes that can be broken apart later.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local coordinate system.
   */
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "fixedAttachment(with:attachedTo:attachmentAnchor:)")
  class func fixedAttachmentWithItem(_ item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self

  /**
   A pin attachment allows two dynamic items to independently rotate around the anchor point as if pinned together. 
   You can configure how far the two objects may rotate and the resistance to rotation
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local coordinate system
   @see frictionTorque, resistance to rotation
   */
  @available(iOS 9.0, *)
  class func pinAttachment(with item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self

  /**
   A pin attachment allows two dynamic items to independently rotate around the anchor point as if pinned together. 
   You can configure how far the two objects may rotate and the resistance to rotation
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local coordinate system
   @see frictionTorque, resistance to rotation
   */
  @available(iOS 9.0, *)
  @available(swift, obsoleted: 3, renamed: "pinAttachment(with:attachedTo:attachmentAnchor:)")
  class func pinAttachmentWithItem(_ item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  var items: [UIDynamicItem] { get }
  var attachedBehaviorType: UIAttachmentBehavior.AttachmentType { get }
  var anchorPoint: CGPoint
  var length: CGFloat
  var damping: CGFloat
  var frequency: CGFloat
  @available(iOS 9.0, *)
  var frictionTorque: CGFloat
  @available(iOS 9.0, *)
  var attachmentRange: UIFloatRange
  convenience init()
}
