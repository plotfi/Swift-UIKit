@_exported import Foundation

@available(iOS 11.0, *)
protocol UIDragAnimating : NSObjectProtocol {
  func addAnimations(_ animations: @escaping () -> Void)
  func addCompletion(_ completion: @escaping (UIViewAnimatingPosition) -> Void)
  func addCompletion() async -> UIViewAnimatingPosition
}
@available(iOS 11.0, *)
class UIDragInteraction : NSObject, UIInteraction {
  init(delegate: UIDragInteractionDelegate)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  weak var delegate: @sil_weak UIDragInteractionDelegate? { get }
  var allowsSimultaneousRecognitionDuringLift: Bool
  var isEnabled: Bool
  @available(swift, obsoleted: 3, renamed: "isEnabled")
  var enabled: Bool
  class var isEnabledByDefault: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isEnabledByDefault")
  class var enabledByDefault: Bool { get }
  @available(iOS 11.0, *)
  weak var view: @sil_weak UIView? { get }
  @available(iOS 11.0, *)
  func willMove(to view: UIView?)
  @available(iOS 11.0, *)
  func didMove(to view: UIView?)
}
@available(iOS 11.0, *)
protocol UIDragInteractionDelegate : NSObjectProtocol {
  func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem]
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:itemsForBeginning:)")
  func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginningSession session: UIDragSession) -> [UIDragItem]
  optional func dragInteraction(_ interaction: UIDragInteraction, previewForLifting item: UIDragItem, session: UIDragSession) -> UITargetedDragPreview?
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:previewForLifting:session:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, previewForLiftingItem item: UIDragItem, session: UIDragSession) -> UITargetedDragPreview?
  optional func dragInteraction(_ interaction: UIDragInteraction, willAnimateLiftWith animator: UIDragAnimating, session: UIDragSession)
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:willAnimateLiftWith:session:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, willAnimateLiftWithAnimator animator: UIDragAnimating, session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionWillBegin session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionAllowsMoveOperation session: UIDragSession) -> Bool
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionIsRestrictedToDraggingApplication session: UIDragSession) -> Bool
  optional func dragInteraction(_ interaction: UIDragInteraction, prefersFullSizePreviewsFor session: UIDragSession) -> Bool
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:prefersFullSizePreviewsFor:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, prefersFullSizePreviewsForSession session: UIDragSession) -> Bool
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionDidMove session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, willEndWith operation: UIDropOperation)
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:session:willEndWith:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, willEndWithOperation operation: UIDropOperation)
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, didEndWith operation: UIDropOperation)
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:session:didEndWith:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, didEndWithOperation operation: UIDropOperation)
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionDidTransferItems session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, itemsForAddingTo session: UIDragSession, withTouchAt point: CGPoint) -> [UIDragItem]
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:itemsForAddingTo:withTouchAt:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, itemsForAddingToSession session: UIDragSession, withTouchAtPoint point: CGPoint) -> [UIDragItem]
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionForAddingItems sessions: [UIDragSession], withTouchAt point: CGPoint) -> UIDragSession?
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:sessionForAddingItems:withTouchAt:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionForAddingItems sessions: [UIDragSession], withTouchAtPoint point: CGPoint) -> UIDragSession?
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, willAdd items: [UIDragItem], for addingInteraction: UIDragInteraction)
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:session:willAdd:for:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, willAddItems items: [UIDragItem], forInteraction addingInteraction: UIDragInteraction)
  optional func dragInteraction(_ interaction: UIDragInteraction, previewForCancelling item: UIDragItem, withDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:previewForCancelling:withDefault:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, previewForCancellingItem item: UIDragItem, withDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  optional func dragInteraction(_ interaction: UIDragInteraction, item: UIDragItem, willAnimateCancelWith animator: UIDragAnimating)
  @available(swift, obsoleted: 3, renamed: "dragInteraction(_:item:willAnimateCancelWith:)")
  optional func dragInteraction(_ interaction: UIDragInteraction, item: UIDragItem, willAnimateCancelWithAnimator animator: UIDragAnimating)
}
