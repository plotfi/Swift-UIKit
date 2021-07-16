@_exported import Foundation

@available(iOS 14.0, *)
enum __UICellAccessoryDisplayedState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// The accessory is always displayed.
  case always

  /// The accessory is always displayed.
  @available(swift, obsoleted: 3, renamed: "always")
  static var Always: __UICellAccessoryDisplayedState { get }

  /// The accessory is displayed only when the cell is editing.
  case whenEditing

  /// The accessory is displayed only when the cell is editing.
  @available(swift, obsoleted: 3, renamed: "whenEditing")
  static var WhenEditing: __UICellAccessoryDisplayedState { get }

  /// The accessory is displayed only when the cell is not editing.
  case whenNotEditing

  /// The accessory is displayed only when the cell is not editing.
  @available(swift, obsoleted: 3, renamed: "whenNotEditing")
  static var WhenNotEditing: __UICellAccessoryDisplayedState { get }
}

/// A special constant that can be set to the `reservedLayoutWidth` property. This requests the
/// system standard layout width.
@available(iOS 14.0, *)
let __UICellAccessoryStandardDimension: CGFloat

/// Abstract base class. Do not instantiate directly.
@available(iOS 14.0, *)
class __UICellAccessory : NSObject, NSCopying, NSSecureCoding {

  /// The state(s) for which the accessory should be displayed.
  var displayedState: __UICellAccessoryDisplayedState

  /// Hidden accessories take up space in the layout, but are not visible and do not provide any behaviors.
  /// Use this property to achieve a consistent layout across cells when some show the accessory and others do not.
  var isHidden: Bool

  /// Hidden accessories take up space in the layout, but are not visible and do not provide any behaviors.
  /// Use this property to achieve a consistent layout across cells when some show the accessory and others do not.
  @available(swift, obsoleted: 3, renamed: "isHidden")
  var hidden: Bool

  /// The layout width that is reserved for the accessory, inside which the accessory will be centered.
  /// This is used to ensure horizontal alignment of different accessories in adjacent cells, even when
  /// the actual accessory view width varies slightly. A value of 0 means the actual width of the
  /// accessory will be used. Use UICellAccessoryStandardDimension to request the standard width.
  var reservedLayoutWidth: CGFloat

  /// The tint color to apply to the accessory. Default value is nil, which uses the system default.
  var tintColor: UIColor?
  init?(coder: NSCoder)
  init()
  @available(iOS 14.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 14.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 14.0, *)
  func encode(with coder: NSCoder)
}

/// A disclosure chevron that points in the trailing direction.
@available(iOS 14.0, *)
class __UICellAccessoryDisclosureIndicator : __UICellAccessory {
  init?(coder: NSCoder)
  init()
}

/// A checkmark with default green color.
@available(iOS 14.0, *)
class __UICellAccessoryCheckmark : __UICellAccessory {
  init?(coder: NSCoder)
  init()
}

/// A delete control (minus sign inside a circle) with default red color.
@available(iOS 14.0, *)
class __UICellAccessoryDelete : __UICellAccessory {

  /// The background color to apply to the accessory. Default value is nil, which uses the system default.
  var backgroundColor: UIColor?

  /// An optional handler to call when the delete accessory is tapped. If nil, a tap will reveal any trailing swipe actions for the cell.
  var actionHandler: (() -> Void)?
  init?(coder: NSCoder)
  init()
}

/// An insert control (plus sign inside a circle) with default green color.
@available(iOS 14.0, *)
class __UICellAccessoryInsert : __UICellAccessory {

  /// The background color to apply to the accessory. Default value is nil, which uses the system default.
  var backgroundColor: UIColor?

  /// An optional handler to call when the insert accessory is tapped. If nil, taps on the accessory are ignored.
  var actionHandler: (() -> Void)?
  init?(coder: NSCoder)
  init()
}

/// A reorder control (three horizontal lines) with default gray color that automatically initiates interactive
/// reordering on the collection view when dragged (if supported).
@available(iOS 14.0, *)
class __UICellAccessoryReorder : __UICellAccessory {

  /// Whether a vertical separator is displayed before the accessory when it is placed after another accessory. Default is YES.
  var showsVerticalSeparator: Bool
  init?(coder: NSCoder)
  init()
}

/// A two-state control whose appearance follows the selection state of the cell (empty circle when deselected,
/// filled circle with checkmark when selected).
@available(iOS 14.0, *)
class __UICellAccessoryMultiselect : __UICellAccessory {

  /// The background color to apply to the accessory. Default value is nil, which uses the system default.
  var backgroundColor: UIColor?
  init?(coder: NSCoder)
  init()
}
@available(iOS 14.0, *)
enum __UICellAccessoryOutlineDisclosureStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// The style will be automatically determined based on whether the cell is configured to be a section header or not.
  case automatic

  /// The style will be automatically determined based on whether the cell is configured to be a section header or not.
  @available(swift, obsoleted: 3, renamed: "automatic")
  static var Automatic: __UICellAccessoryOutlineDisclosureStyle { get }

  /// A style appropriate for a section header, where a tap anywhere in the header will toggle the expansion state
  /// of the item (the cell cannot be selected).
  case header

  /// A style appropriate for a section header, where a tap anywhere in the header will toggle the expansion state
  /// of the item (the cell cannot be selected).
  @available(swift, obsoleted: 3, renamed: "header")
  static var Header: __UICellAccessoryOutlineDisclosureStyle { get }

  /// A style appropriate for a cell which can be selected itself and also has nested children, where only taps on the
  /// outline disclosure will toggle the expansion state of the item; taps on the cell will select the item as normal.
  case cell

  /// A style appropriate for a cell which can be selected itself and also has nested children, where only taps on the
  /// outline disclosure will toggle the expansion state of the item; taps on the cell will select the item as normal.
  @available(swift, obsoleted: 3, renamed: "cell")
  static var Cell: __UICellAccessoryOutlineDisclosureStyle { get }
}

/// A rotating disclosure chevron for use with outlines, used to indicate and toggle the expanded/collapsed state of the item.
@available(iOS 14.0, *)
class __UICellAccessoryOutlineDisclosure : __UICellAccessory {

  /// The style of the outline disclosure accessory. Default is automatic.
  var style: __UICellAccessoryOutlineDisclosureStyle

  /// An optional handler to call when the outline disclosure accessory is tapped. If nil, the default behavior when using
  /// a NSDiffableDataSourceSectionSnapshot is to toggle the expand/collapse state of the item in the section snapshot.
  var actionHandler: (() -> Void)?
  init?(coder: NSCoder)
  init()
}

/// A label displaying a short string of text, typically a small number such as a count for the associated item.
@available(iOS 14.0, *)
class __UICellAccessoryLabel : __UICellAccessory {

  /// Creates a new label accessory using the provided text.
  init(text: String)
  var text: String { get }

  /// The font used for the label. Default is the preferred font for UIFontTextStyleBody.
  var font: UIFont

  /// Whether the label automatically adjusts its font based on the content size category. Default is YES.
  var adjustsFontForContentSizeCategory: Bool
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
}
@available(iOS 14.0, *)
enum __UICellAccessoryPlacement : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// Accessory placed on the leading edge.
  case leading

  /// Accessory placed on the leading edge.
  @available(swift, obsoleted: 3, renamed: "leading")
  static var Leading: __UICellAccessoryPlacement { get }

  /// Accessory placed on the trailing edge.
  case trailing

  /// Accessory placed on the trailing edge.
  @available(swift, obsoleted: 3, renamed: "trailing")
  static var Trailing: __UICellAccessoryPlacement { get }
}

/// Return an index to insert the accessory at, given an array of the existing accessories on the edge (in leading to trailing order).
@available(iOS 14.0, *)
typealias __UICellAccessoryPosition = ([__UICellAccessory]) -> Int

/// Positions the accessory before the accessory matching the class specified, or at the beginning if not found.
@available(iOS 14.0, *)
func __UICellAccessoryPositionBeforeAccessoryOfClass(_ accessoryClass: AnyClass) -> __UICellAccessoryPosition

/// Positions the accessory after the accessory matching the class specified, or at the end if not found.
@available(iOS 14.0, *)
func __UICellAccessoryPositionAfterAccessoryOfClass(_ accessoryClass: AnyClass) -> __UICellAccessoryPosition

/// An accessory using a custom view.
@available(iOS 14.0, *)
class __UICellAccessoryCustomView : __UICellAccessory {

  /// Creates a new custom view accessory using the provided view and specified placement. The custom view must have translatesAutoresizingMaskIntoConstraints
  /// enabled, but may use auto layout constraints internally for layout of subviews and/or to indicate its preferred size.
  init(customView: UIView, placement: __UICellAccessoryPlacement)
  var customView: UIView { get }
  var placement: __UICellAccessoryPlacement { get }

  /// Whether the current frame size of the view is preserved (YES), or whether it is sized during layout of accessories (NO). Default is NO.
  var maintainsFixedSize: Bool

  /// Allows customizing the relative position of the accessory amongst any other accessories displayed on the same edge.
  /// The default is to insert the accessory at a position closest to the inside of the cell.
  var position: __UICellAccessoryPosition!
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
}
