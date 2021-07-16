@_exported import Foundation

@available(iOS 14.0, *)
enum __UICellConfigurationDragState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// The cell is not associated with a drag session.
  case none

  /// The cell is not associated with a drag session.
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: __UICellConfigurationDragState { get }

  /// The cell is being lifted, before has joined a drag session.
  case lifting

  /// The cell is being lifted, before has joined a drag session.
  @available(swift, obsoleted: 3, renamed: "lifting")
  static var Lifting: __UICellConfigurationDragState { get }

  /// The cell is part of an active drag session.
  case dragging

  /// The cell is part of an active drag session.
  @available(swift, obsoleted: 3, renamed: "dragging")
  static var Dragging: __UICellConfigurationDragState { get }
}
@available(iOS 14.0, *)
enum __UICellConfigurationDropState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int

  /// The cell is not associated with a drag session.
  case none

  /// The cell is not associated with a drag session.
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: __UICellConfigurationDropState { get }

  /// A drag session is active and may perform a drop in the cell's container, but the cell itself
  /// is not the drop target.
  case notTargeted

  /// A drag session is active and may perform a drop in the cell's container, but the cell itself
  /// is not the drop target.
  @available(swift, obsoleted: 3, renamed: "notTargeted")
  static var NotTargeted: __UICellConfigurationDropState { get }

  /// The cell is the drop target for a drag session.
  case targeted

  /// The cell is the drop target for a drag session.
  @available(swift, obsoleted: 3, renamed: "targeted")
  static var Targeted: __UICellConfigurationDropState { get }
}
@available(iOS 14.0, *)
class __UICellConfigurationState : __UIViewConfigurationState {
  var isEditing: Bool
  @available(swift, obsoleted: 3, renamed: "isEditing")
  var editing: Bool
  var isExpanded: Bool
  @available(swift, obsoleted: 3, renamed: "isExpanded")
  var expanded: Bool
  var isSwiped: Bool
  @available(swift, obsoleted: 3, renamed: "isSwiped")
  var swiped: Bool
  var isReordering: Bool
  @available(swift, obsoleted: 3, renamed: "isReordering")
  var reordering: Bool
  var cellDragState: __UICellConfigurationDragState
  var cellDropState: __UICellConfigurationDropState

  /// Returns a new instance with the specified trait collection.
  init(traitCollection: UITraitCollection)
  init?(coder: NSCoder)
  @available(*, unavailable)
  convenience init()
}
