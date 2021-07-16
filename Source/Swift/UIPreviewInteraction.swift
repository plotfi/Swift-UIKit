@_exported import Foundation

@available(iOS 10.0, *)
class UIPreviewInteraction : NSObject {
  init(view: UIView)
  weak var view: @sil_weak UIView? { get }
  @available(*, unavailable)
  convenience init()
  weak var delegate: @sil_weak UIPreviewInteractionDelegate?
  func location(in coordinateSpace: UICoordinateSpace?) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "location(in:)")
  func locationInCoordinateSpace(_ coordinateSpace: UICoordinateSpace?) -> CGPoint
  func cancel()
  @available(swift, obsoleted: 3, renamed: "cancel()")
  func cancelInteraction()
}
protocol UIPreviewInteractionDelegate : NSObjectProtocol {
  @available(iOS 10.0, *)
  func previewInteraction(_ previewInteraction: UIPreviewInteraction, didUpdatePreviewTransition transitionProgress: CGFloat, ended: Bool)
  @available(iOS 10.0, *)
  func previewInteractionDidCancel(_ previewInteraction: UIPreviewInteraction)
  @available(iOS 10.0, *)
  optional func previewInteractionShouldBegin(_ previewInteraction: UIPreviewInteraction) -> Bool
  @available(iOS 10.0, *)
  optional func previewInteraction(_ previewInteraction: UIPreviewInteraction, didUpdateCommitTransition transitionProgress: CGFloat, ended: Bool)
}
