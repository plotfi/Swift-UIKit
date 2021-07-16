@_exported import Foundation

@available(iOS 11.0, *)
class UIDragPreviewTarget : UIPreviewTarget {
  init(container: UIView, center: CGPoint, transform: CGAffineTransform)
  convenience init(container: UIView, center: CGPoint)
  @available(*, unavailable)
  convenience init()
}
@available(iOS 11.0, *)
class UITargetedDragPreview : UITargetedPreview {
  func retargetedPreview(with newTarget: UIDragPreviewTarget) -> UITargetedDragPreview
  @available(swift, obsoleted: 3, renamed: "retargetedPreview(with:)")
  func retargetedPreviewWithTarget(_ newTarget: UIDragPreviewTarget) -> UITargetedDragPreview
  init(view: UIView, parameters: UIPreviewParameters, target: UIPreviewTarget)
  convenience init(view: UIView, parameters: UIPreviewParameters)
  convenience init(view: UIView)
  @available(*, unavailable)
  convenience init()
}
