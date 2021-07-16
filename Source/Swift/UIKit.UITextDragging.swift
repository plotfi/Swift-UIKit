@_exported import Foundation

@available(iOS 11.0, *)
struct UITextDragOptions : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  typealias RawValue = Int
  typealias Element = UITextDragOptions
  typealias ArrayLiteralElement = UITextDragOptions
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: UITextDragOptions { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UITextDragOptions { get }
  static var stripTextColorFromPreviews: UITextDragOptions { get }
  @available(swift, obsoleted: 3, renamed: "stripTextColorFromPreviews")
  static var UITextDragOptionStripTextColorFromPreviews: UITextDragOptions { get }
}
@available(iOS 11.0, *)
protocol UITextDraggable : UITextInput {
  weak var textDragDelegate: @sil_weak UITextDragDelegate? { get set }
  var textDragInteraction: UIDragInteraction? { get }
  var isTextDragActive: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isTextDragActive")
  var textDragActive: Bool { get }
  var textDragOptions: UITextDragOptions { get set }
}
@available(iOS 11.0, *)
protocol UITextDragDelegate : NSObjectProtocol {
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, itemsForDrag dragRequest: UITextDragRequest) -> [UIDragItem]
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, dragPreviewForLiftingItem item: UIDragItem, session: UIDragSession) -> UITargetedDragPreview?
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, willAnimateLiftWith animator: UIDragAnimating, session: UIDragSession)
  @available(swift, obsoleted: 3, renamed: "textDraggableView(_:willAnimateLiftWith:session:)")
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, willAnimateLiftWithAnimator animator: UIDragAnimating, session: UIDragSession)
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, dragSessionWillBegin session: UIDragSession)
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, dragSessionDidEnd session: UIDragSession, with operation: UIDropOperation)
  @available(swift, obsoleted: 3, renamed: "textDraggableView(_:dragSessionDidEnd:with:)")
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, dragSessionDidEnd session: UIDragSession, withOperation operation: UIDropOperation)
}
@available(iOS 11.0, *)
protocol UITextDragRequest : NSObjectProtocol {
  var dragRange: UITextRange { get }
  var suggestedItems: [UIDragItem] { get }
  var existingItems: [UIDragItem] { get }
  var isSelected: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isSelected")
  var selected: Bool { get }
  var dragSession: UIDragSession { get }
}
