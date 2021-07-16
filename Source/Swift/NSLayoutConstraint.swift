@_exported import Foundation

struct UILayoutPriority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Float)
  init(rawValue: Float)
  let rawValue: Float
  typealias RawValue = Float
}

extension UILayoutPriority : _UIKitNumericRawRepresentable {
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UILayoutPriority.required")
let UILayoutPriorityRequired: UILayoutPriority
extension UILayoutPriority {
  @available(iOS 6.0, *)
  static let required: UILayoutPriority
  @available(iOS 6.0, *)
  static let defaultHigh: UILayoutPriority
  static let dragThatCanResizeScene: UILayoutPriority
  static let sceneSizeStayPut: UILayoutPriority
  static let dragThatCannotResizeScene: UILayoutPriority
  @available(iOS 6.0, *)
  static let defaultLow: UILayoutPriority
  @available(iOS 6.0, *)
  static let fittingSizeLevel: UILayoutPriority
}
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UILayoutPriority.defaultHigh")
let UILayoutPriorityDefaultHigh: UILayoutPriority
@available(swift, obsoleted: 3, renamed: "UILayoutPriority.dragThatCanResizeScene")
let UILayoutPriorityDragThatCanResizeScene: UILayoutPriority
@available(swift, obsoleted: 3, renamed: "UILayoutPriority.sceneSizeStayPut")
let UILayoutPrioritySceneSizeStayPut: UILayoutPriority
@available(swift, obsoleted: 3, renamed: "UILayoutPriority.dragThatCannotResizeScene")
let UILayoutPriorityDragThatCannotResizeScene: UILayoutPriority
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UILayoutPriority.defaultLow")
let UILayoutPriorityDefaultLow: UILayoutPriority
@available(iOS 6.0, *)
@available(swift, obsoleted: 3, renamed: "UILayoutPriority.fittingSizeLevel")
let UILayoutPriorityFittingSizeLevel: UILayoutPriority
var NSLAYOUTCONSTRAINT_H: Int32 { get }
@available(swift, obsoleted: 4.2, renamed: "NSLayoutConstraint.Relation")
typealias NSLayoutRelation = NSLayoutConstraint.Relation
extension NSLayoutConstraint {
  enum Relation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case lessThanOrEqual
    @available(swift, obsoleted: 3, renamed: "lessThanOrEqual")
    static var LessThanOrEqual: NSLayoutConstraint.Relation { get }
    case equal
    @available(swift, obsoleted: 3, renamed: "equal")
    static var Equal: NSLayoutConstraint.Relation { get }
    case greaterThanOrEqual
    @available(swift, obsoleted: 3, renamed: "greaterThanOrEqual")
    static var GreaterThanOrEqual: NSLayoutConstraint.Relation { get }
  }
  enum Attribute : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case left
    @available(swift, obsoleted: 3, renamed: "left")
    static var Left: NSLayoutConstraint.Attribute { get }
    case right
    @available(swift, obsoleted: 3, renamed: "right")
    static var Right: NSLayoutConstraint.Attribute { get }
    case top
    @available(swift, obsoleted: 3, renamed: "top")
    static var Top: NSLayoutConstraint.Attribute { get }
    case bottom
    @available(swift, obsoleted: 3, renamed: "bottom")
    static var Bottom: NSLayoutConstraint.Attribute { get }
    case leading
    @available(swift, obsoleted: 3, renamed: "leading")
    static var Leading: NSLayoutConstraint.Attribute { get }
    case trailing
    @available(swift, obsoleted: 3, renamed: "trailing")
    static var Trailing: NSLayoutConstraint.Attribute { get }
    case width
    @available(swift, obsoleted: 3, renamed: "width")
    static var Width: NSLayoutConstraint.Attribute { get }
    case height
    @available(swift, obsoleted: 3, renamed: "height")
    static var Height: NSLayoutConstraint.Attribute { get }
    case centerX
    @available(swift, obsoleted: 3, renamed: "centerX")
    static var CenterX: NSLayoutConstraint.Attribute { get }
    case centerY
    @available(swift, obsoleted: 3, renamed: "centerY")
    static var CenterY: NSLayoutConstraint.Attribute { get }
    case lastBaseline
    @available(swift, obsoleted: 3, renamed: "lastBaseline")
    static var LastBaseline: NSLayoutConstraint.Attribute { get }
    @available(*, unavailable, message: "Use 'lastBaseline' instead")
    static var baseline: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case firstBaseline
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "firstBaseline")
    static var FirstBaseline: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case leftMargin
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "leftMargin")
    static var LeftMargin: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case rightMargin
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "rightMargin")
    static var RightMargin: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case topMargin
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "topMargin")
    static var TopMargin: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case bottomMargin
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "bottomMargin")
    static var BottomMargin: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case leadingMargin
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "leadingMargin")
    static var LeadingMargin: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case trailingMargin
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "trailingMargin")
    static var TrailingMargin: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case centerXWithinMargins
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "centerXWithinMargins")
    static var CenterXWithinMargins: NSLayoutConstraint.Attribute { get }
    @available(iOS 8.0, *)
    case centerYWithinMargins
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "centerYWithinMargins")
    static var CenterYWithinMargins: NSLayoutConstraint.Attribute { get }
    case notAnAttribute
    @available(swift, obsoleted: 3, renamed: "notAnAttribute")
    static var NotAnAttribute: NSLayoutConstraint.Attribute { get }
  }
  struct FormatOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = NSLayoutConstraint.FormatOptions
    typealias ArrayLiteralElement = NSLayoutConstraint.FormatOptions
    static var alignAllLeft: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllLeft")
    static var AlignAllLeft: NSLayoutConstraint.FormatOptions { get }
    static var alignAllRight: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllRight")
    static var AlignAllRight: NSLayoutConstraint.FormatOptions { get }
    static var alignAllTop: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllTop")
    static var AlignAllTop: NSLayoutConstraint.FormatOptions { get }
    static var alignAllBottom: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllBottom")
    static var AlignAllBottom: NSLayoutConstraint.FormatOptions { get }
    static var alignAllLeading: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllLeading")
    static var AlignAllLeading: NSLayoutConstraint.FormatOptions { get }
    static var alignAllTrailing: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllTrailing")
    static var AlignAllTrailing: NSLayoutConstraint.FormatOptions { get }
    static var alignAllCenterX: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllCenterX")
    static var AlignAllCenterX: NSLayoutConstraint.FormatOptions { get }
    static var alignAllCenterY: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllCenterY")
    static var AlignAllCenterY: NSLayoutConstraint.FormatOptions { get }
    static var alignAllLastBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignAllLastBaseline")
    static var AlignAllLastBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 8.0, *)
    static var alignAllFirstBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 8.0, *)
    @available(swift, obsoleted: 3, renamed: "alignAllFirstBaseline")
    static var AlignAllFirstBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(*, unavailable, message: "Use 'alignAllLastBaseline' instead")
    static var alignAllBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(*, unavailable, message: "Use 'alignAllLastBaseline' instead")
    @available(swift, obsoleted: 3, renamed: "alignAllBaseline")
    static var AlignAllBaseline: NSLayoutConstraint.FormatOptions { get }
    static var alignmentMask: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "alignmentMask")
    static var AlignmentMask: NSLayoutConstraint.FormatOptions { get }
    static var directionLeadingToTrailing: NSLayoutConstraint.FormatOptions { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "directionLeadingToTrailing")
    static var DirectionLeadingToTrailing: NSLayoutConstraint.FormatOptions { get }
    static var directionLeftToRight: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "directionLeftToRight")
    static var DirectionLeftToRight: NSLayoutConstraint.FormatOptions { get }
    static var directionRightToLeft: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "directionRightToLeft")
    static var DirectionRightToLeft: NSLayoutConstraint.FormatOptions { get }
    static var directionMask: NSLayoutConstraint.FormatOptions { get }
    @available(swift, obsoleted: 3, renamed: "directionMask")
    static var DirectionMask: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 11.0, *)
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var spacingEdgeToEdge: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 11.0, *)
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "spacingEdgeToEdge")
    static var SpacingEdgeToEdge: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 11.0, *)
    static var spacingBaselineToBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 11.0, *)
    @available(swift, obsoleted: 3, renamed: "spacingBaselineToBaseline")
    static var SpacingBaselineToBaseline: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 11.0, *)
    static var spacingMask: NSLayoutConstraint.FormatOptions { get }
    @available(iOS 11.0, *)
    @available(swift, obsoleted: 3, renamed: "spacingMask")
    static var SpacingMask: NSLayoutConstraint.FormatOptions { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "NSLayoutConstraint.Attribute")
typealias NSLayoutAttribute = NSLayoutConstraint.Attribute
@available(swift, obsoleted: 4.2, renamed: "NSLayoutConstraint.FormatOptions")
typealias NSLayoutFormatOptions = NSLayoutConstraint.FormatOptions
@available(iOS 6.0, *)
class NSLayoutConstraint : NSObject {
  @available(iOS 6.0, *)
  class func constraints(withVisualFormat format: String, options opts: NSLayoutConstraint.FormatOptions = [], metrics: [String : Any]?, views: [String : Any]) -> [NSLayoutConstraint]
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "constraints(withVisualFormat:options:metrics:views:)")
  class func constraintsWithVisualFormat(_ format: String, options opts: NSLayoutConstraint.FormatOptions = [], metrics: [String : Any]?, views: [String : Any]) -> [NSLayoutConstraint]
  @available(iOS 6.0, *)
  convenience init(item view1: Any, attribute attr1: NSLayoutConstraint.Attribute, relatedBy relation: NSLayoutConstraint.Relation, toItem view2: Any?, attribute attr2: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant c: CGFloat)
  @available(iOS 6.0, *)
  @available(*, unavailable, renamed: "init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)", message: "Not available in Swift")
  class func constraintWithItem(_ view1: Any, attribute attr1: NSLayoutConstraint.Attribute, relatedBy relation: NSLayoutConstraint.Relation, toItem view2: Any?, attribute attr2: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant c: CGFloat) -> Self
  var priority: UILayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject? { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var firstAttribute: NSLayoutConstraint.Attribute { get }
  var secondAttribute: NSLayoutConstraint.Attribute { get }
  @available(iOS 10.0, *)
  @NSCopying var firstAnchor: NSLayoutAnchor<AnyObject> { get }
  @available(iOS 10.0, *)
  @NSCopying var secondAnchor: NSLayoutAnchor<AnyObject>? { get }
  var relation: NSLayoutConstraint.Relation { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  @available(iOS 8.0, *)
  var isActive: Bool
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "isActive")
  var active: Bool
  @available(iOS 8.0, *)
  class func activate(_ constraints: [NSLayoutConstraint])
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "activate(_:)")
  class func activateConstraints(_ constraints: [NSLayoutConstraint])
  @available(iOS 8.0, *)
  class func deactivate(_ constraints: [NSLayoutConstraint])
  @available(iOS 8.0, *)
  @available(swift, obsoleted: 3, renamed: "deactivate(_:)")
  class func deactivateConstraints(_ constraints: [NSLayoutConstraint])
  init()
}
@available(iOS 6.0, *)
@available(*, unavailable, message: "Variadic function is unavailable")
func _NSDictionaryOfVariableBindings(_ commaSeparatedKeysString: String, _ firstValue: Any?, _ varargs: Any...) -> [String : Any]
extension NSLayoutConstraint {
  @available(iOS 7.0, *)
  var identifier: String?
}
protocol UILayoutSupport : NSObjectProtocol {
  var length: CGFloat { get }
  @available(iOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
}
