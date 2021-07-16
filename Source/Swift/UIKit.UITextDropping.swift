@_exported import Foundation

@available(iOS 11.0, *)
protocol UITextDroppable : UITextInput, UITextPasteConfigurationSupporting {
  weak var textDropDelegate: @sil_weak UITextDropDelegate? { get set }
  var textDropInteraction: UIDropInteraction? { get }
  var isTextDropActive: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isTextDropActive")
  var textDropActive: Bool { get }
}
@available(iOS 11.0, *)
enum UITextDropEditability : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case no
  @available(swift, obsoleted: 3, renamed: "no")
  static var No: UITextDropEditability { get }
  case temporary
  @available(swift, obsoleted: 3, renamed: "temporary")
  static var Temporary: UITextDropEditability { get }
  case yes
  @available(swift, obsoleted: 3, renamed: "yes")
  static var Yes: UITextDropEditability { get }
}
@available(iOS 11.0, *)
protocol UITextDropDelegate : NSObjectProtocol {
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, willBecomeEditableForDrop drop: UITextDropRequest) -> UITextDropEditability
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, proposalForDrop drop: UITextDropRequest) -> UITextDropProposal
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, willPerformDrop drop: UITextDropRequest)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, previewForDroppingAllItemsWithDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidEnter session: UIDropSession)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidUpdate session: UIDropSession)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidExit session: UIDropSession)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidEnd session: UIDropSession)
}
@available(iOS 11.0, *)
protocol UITextDropRequest : NSObjectProtocol {
  var dropPosition: UITextPosition { get }
  var suggestedProposal: UITextDropProposal { get }
  var isSameView: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isSameView")
  var sameView: Bool { get }
  var dropSession: UIDropSession { get }
}
