@_exported import Foundation

@available(iOS 11.0, *)
class UIDropInteraction : NSObject, UIInteraction {
  init(delegate: UIDropInteractionDelegate)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  weak var delegate: @sil_weak UIDropInteractionDelegate? { get }
  var allowsSimultaneousDropSessions: Bool
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
@available(iOS 11.0, *)
enum UIDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case cancel
  @available(swift, obsoleted: 3, renamed: "cancel")
  static var Cancel: UIDropOperation { get }
  case forbidden
  @available(swift, obsoleted: 3, renamed: "forbidden")
  static var Forbidden: UIDropOperation { get }
  case copy
  @available(swift, obsoleted: 3, renamed: "copy")
  static var Copy: UIDropOperation { get }
  case move
  @available(swift, obsoleted: 3, renamed: "move")
  static var Move: UIDropOperation { get }
}
@available(iOS 11.0, *)
class UIDropProposal : NSObject, NSCopying {
  init(operation: UIDropOperation)
  @available(swift, obsoleted: 3, renamed: "init(operation:)")
  init(dropOperation operation: UIDropOperation)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var operation: UIDropOperation { get }
  var isPrecise: Bool
  @available(swift, obsoleted: 3, renamed: "isPrecise")
  var precise: Bool
  var prefersFullSizePreview: Bool
  @available(iOS 11.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 11.0, *)
protocol UIDropInteractionDelegate : NSObjectProtocol {
  optional func dropInteraction(_ interaction: UIDropInteraction, canHandle session: UIDropSession) -> Bool
  @available(swift, obsoleted: 3, renamed: "dropInteraction(_:canHandle:)")
  optional func dropInteraction(_ interaction: UIDropInteraction, canHandleSession session: UIDropSession) -> Bool
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidEnter session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidExit session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, concludeDrop session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidEnd session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, previewForDropping item: UIDragItem, withDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  @available(swift, obsoleted: 3, renamed: "dropInteraction(_:previewForDropping:withDefault:)")
  optional func dropInteraction(_ interaction: UIDropInteraction, previewForDroppingItem item: UIDragItem, withDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  optional func dropInteraction(_ interaction: UIDropInteraction, item: UIDragItem, willAnimateDropWith animator: UIDragAnimating)
  @available(swift, obsoleted: 3, renamed: "dropInteraction(_:item:willAnimateDropWith:)")
  optional func dropInteraction(_ interaction: UIDropInteraction, item: UIDragItem, willAnimateDropWithAnimator animator: UIDragAnimating)
}
