@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.CellStyle")
typealias UITableViewCellStyle = UITableViewCell.CellStyle
extension UITableViewCell {
  enum CellStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UITableViewCell.CellStyle { get }
    case value1
    @available(swift, obsoleted: 3, renamed: "value1")
    static var Value1: UITableViewCell.CellStyle { get }
    case value2
    @available(swift, obsoleted: 3, renamed: "value2")
    static var Value2: UITableViewCell.CellStyle { get }
    case subtitle
    @available(swift, obsoleted: 3, renamed: "subtitle")
    static var Subtitle: UITableViewCell.CellStyle { get }
  }
  enum SeparatorStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITableViewCell.SeparatorStyle { get }
    case singleLine
    @available(swift, obsoleted: 3, renamed: "singleLine")
    static var SingleLine: UITableViewCell.SeparatorStyle { get }
    @available(iOS, introduced: 2.0, deprecated: 11.0, message: "Use UITableViewCellSeparatorStyleSingleLine for a single line separator.")
    case singleLineEtched
    @available(iOS, introduced: 2.0, deprecated: 11.0, message: "Use UITableViewCellSeparatorStyleSingleLine for a single line separator.")
    @available(swift, obsoleted: 3, renamed: "singleLineEtched")
    static var SingleLineEtched: UITableViewCell.SeparatorStyle { get }
  }
  enum SelectionStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITableViewCell.SelectionStyle { get }
    case blue
    @available(swift, obsoleted: 3, renamed: "blue")
    static var Blue: UITableViewCell.SelectionStyle { get }
    case gray
    @available(swift, obsoleted: 3, renamed: "gray")
    static var Gray: UITableViewCell.SelectionStyle { get }
    @available(iOS 7.0, *)
    case `default`
    @available(iOS 7.0, *)
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UITableViewCell.SelectionStyle { get }
  }
  @available(iOS 9.0, *)
  enum FocusStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UITableViewCell.FocusStyle { get }
    case custom
    @available(swift, obsoleted: 3, renamed: "custom")
    static var Custom: UITableViewCell.FocusStyle { get }
  }
  enum EditingStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITableViewCell.EditingStyle { get }
    case delete
    @available(swift, obsoleted: 3, renamed: "delete")
    static var Delete: UITableViewCell.EditingStyle { get }
    case insert
    @available(swift, obsoleted: 3, renamed: "insert")
    static var Insert: UITableViewCell.EditingStyle { get }
  }
  enum AccessoryType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITableViewCell.AccessoryType { get }
    case disclosureIndicator
    @available(swift, obsoleted: 3, renamed: "disclosureIndicator")
    static var DisclosureIndicator: UITableViewCell.AccessoryType { get }
    case detailDisclosureButton
    @available(swift, obsoleted: 3, renamed: "detailDisclosureButton")
    static var DetailDisclosureButton: UITableViewCell.AccessoryType { get }
    case checkmark
    @available(swift, obsoleted: 3, renamed: "checkmark")
    static var Checkmark: UITableViewCell.AccessoryType { get }
    @available(iOS 7.0, *)
    case detailButton
    @available(iOS 7.0, *)
    @available(swift, obsoleted: 3, renamed: "detailButton")
    static var DetailButton: UITableViewCell.AccessoryType { get }
  }
  struct StateMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UITableViewCell.StateMask
    typealias ArrayLiteralElement = UITableViewCell.StateMask
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var defaultMask: UITableViewCell.StateMask { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "defaultMask")
    static var DefaultMask: UITableViewCell.StateMask { get }
    static var showingEditControl: UITableViewCell.StateMask { get }
    @available(swift, obsoleted: 4.2, renamed: "showingEditControl")
    static var showingEditControlMask: UITableViewCell.StateMask { get }
    @available(swift, obsoleted: 3, renamed: "showingEditControl")
    static var ShowingEditControlMask: UITableViewCell.StateMask { get }
    static var showingDeleteConfirmation: UITableViewCell.StateMask { get }
    @available(swift, obsoleted: 4.2, renamed: "showingDeleteConfirmation")
    static var showingDeleteConfirmationMask: UITableViewCell.StateMask { get }
    @available(swift, obsoleted: 3, renamed: "showingDeleteConfirmation")
    static var ShowingDeleteConfirmationMask: UITableViewCell.StateMask { get }
  }
  @available(iOS 11.0, *)
  enum DragState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UITableViewCell.DragState { get }
    case lifting
    @available(swift, obsoleted: 3, renamed: "lifting")
    static var Lifting: UITableViewCell.DragState { get }
    case dragging
    @available(swift, obsoleted: 3, renamed: "dragging")
    static var Dragging: UITableViewCell.DragState { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.SeparatorStyle")
typealias UITableViewCellSeparatorStyle = UITableViewCell.SeparatorStyle
@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.SelectionStyle")
typealias UITableViewCellSelectionStyle = UITableViewCell.SelectionStyle
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.FocusStyle")
typealias UITableViewCellFocusStyle = UITableViewCell.FocusStyle
@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.EditingStyle")
typealias UITableViewCellEditingStyle = UITableViewCell.EditingStyle
@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.AccessoryType")
typealias UITableViewCellAccessoryType = UITableViewCell.AccessoryType
@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.StateMask")
typealias UITableViewCellStateMask = UITableViewCell.StateMask
@available(iOS 11.0, *)
@available(swift, obsoleted: 4.2, renamed: "UITableViewCell.DragState")
typealias UITableViewCellDragState = UITableViewCell.DragState
@available(iOS 2.0, *)
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  @available(iOS 3.0, *)
  init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
  init?(coder: NSCoder)

  /// Returns the current configuration state for the cell.
  /// To add your own custom state(s), override the getter and call super to obtain an instance with the
  /// system properties set, then set your own custom states as desired.
  @available(iOS 14.0, *)
  var __configurationState: __UICellConfigurationState { get }

  /// Requests the cell update its configuration for its current state. This method is called automatically
  /// when the cell's `configurationState` may have changed, as well as in other circumstances where an
  /// update may be required. Multiple requests may be coalesced into a single update at the appropriate time.
  @available(iOS 14.0, *)
  func setNeedsUpdateConfiguration()

  /// Subclasses should override this method and update the cell's configuration using the state provided.
  /// This method should not be called directly, use `setNeedsUpdateConfiguration` to request an update.
  @available(iOS 14.0, *)
  func __updateConfiguration(using state: __UICellConfigurationState)

  /// Subclasses should override this method and update the cell's configuration using the state provided.
  /// This method should not be called directly, use `setNeedsUpdateConfiguration` to request an update.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__updateConfiguration(using:)")
  func __updateConfigurationUsingState(_ state: __UICellConfigurationState)

  /// Returns a default list content configuration for the cell's style.
  @available(iOS 14.0, *)
  func __defaultContentConfiguration() -> __UIListContentConfiguration

  /// Setting a content configuration replaces the existing contentView of the cell with a new content view instance from the configuration,
  /// or directly applies the configuration to the existing content view if the configuration is compatible with the existing content view type.
  /// The default value is nil. After a configuration has been set, setting this property to nil will replace the current content view with a new content view.
  @available(iOS 14.0, *)
  @NSCopying var __contentConfiguration: __UIContentConfiguration?

  /// When YES, the cell will automatically call -updatedConfigurationForState: on its `contentConfiguration` when the cell's
  /// configuration state changes, and apply the updated configuration back to the cell. The default value is YES.
  @available(iOS 14.0, *)
  var automaticallyUpdatesContentConfiguration: Bool
  var contentView: UIView { get }
  @available(iOS, introduced: 3.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var imageView: UIImageView? { get }
  @available(iOS, introduced: 3.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var textLabel: UILabel? { get }
  @available(iOS, introduced: 3.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var detailTextLabel: UILabel? { get }

  /// Setting a background configuration supersedes the cell's backgroundView, selectedBackgroundView, and multipleSelectionBackgroundView. The default value is nil.
  @available(iOS 14.0, *)
  @NSCopying var __backgroundConfiguration: __UIBackgroundConfiguration?

  /// When YES, the cell will automatically call -updatedConfigurationForState: on its `backgroundConfiguration` when the cell's
  /// configuration state changes, and apply the updated configuration back to the cell. The default value is YES.
  @available(iOS 14.0, *)
  var automaticallyUpdatesBackgroundConfiguration: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  @available(iOS 5.0, *)
  var multipleSelectionBackgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var selectionStyle: UITableViewCell.SelectionStyle
  var isSelected: Bool
  @available(swift, obsoleted: 3, renamed: "isSelected")
  var selected: Bool
  var isHighlighted: Bool
  @available(swift, obsoleted: 3, renamed: "isHighlighted")
  var highlighted: Bool
  func setSelected(_ selected: Bool, animated: Bool)
  func setHighlighted(_ highlighted: Bool, animated: Bool)
  var editingStyle: UITableViewCell.EditingStyle { get }
  var showsReorderControl: Bool
  var shouldIndentWhileEditing: Bool
  var accessoryType: UITableViewCell.AccessoryType
  var accessoryView: UIView?
  var editingAccessoryType: UITableViewCell.AccessoryType
  var editingAccessoryView: UIView?
  var indentationLevel: Int
  var indentationWidth: CGFloat
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  var isEditing: Bool
  @available(swift, obsoleted: 3, renamed: "isEditing")
  var editing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  @available(iOS 9.0, *)
  var focusStyle: UITableViewCell.FocusStyle
  @available(iOS 3.0, *)
  func willTransition(to state: UITableViewCell.StateMask)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "willTransition(to:)")
  func willTransitionToState(_ state: UITableViewCell.StateMask)
  @available(iOS 3.0, *)
  func didTransition(to state: UITableViewCell.StateMask)
  @available(iOS 3.0, *)
  @available(swift, obsoleted: 3, renamed: "didTransition(to:)")
  func didTransitionToState(_ state: UITableViewCell.StateMask)
  @available(iOS 11.0, *)
  func dragStateDidChange(_ dragState: UITableViewCell.DragState)
  @available(iOS 11.0, *)
  var userInteractionEnabledWhileDragging: Bool
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 3.2, *)
  func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(iOS 9.0, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
  @available(iOS 13.4, *)
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive event: UIEvent) -> Bool
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UICellConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UICellConfigurationState)
}
extension UITableViewCell {
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  convenience init(frame: CGRect, reuseIdentifier: String?)
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var text: String?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var font: UIFont?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var textAlignment: NSTextAlignment
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var lineBreakMode: NSLineBreakMode
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var textColor: UIColor?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var selectedTextColor: UIColor?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var image: UIImage?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var selectedImage: UIImage?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var hidesAccessoryWhenEditing: Bool
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  unowned(unsafe) var target: @sil_unmanaged AnyObject?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var editAction: Selector?
  @available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  var accessoryAction: Selector?
}
