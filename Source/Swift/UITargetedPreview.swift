@_exported import Foundation

@available(iOS 13.0, *)
class UIPreviewTarget : NSObject, NSCopying {
  init(container: UIView, center: CGPoint, transform: CGAffineTransform)
  convenience init(container: UIView, center: CGPoint)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var container: UIView { get }
  var center: CGPoint { get }
  var transform: CGAffineTransform { get }
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
@available(iOS 13.0, *)
class UITargetedPreview : NSObject, NSCopying {
  init(view: UIView, parameters: UIPreviewParameters, target: UIPreviewTarget)
  convenience init(view: UIView, parameters: UIPreviewParameters)
  convenience init(view: UIView)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var target: UIPreviewTarget { get }
  var view: UIView { get }
  @NSCopying var parameters: UIPreviewParameters { get }
  var size: CGSize { get }
  func retargetedPreview(with newTarget: UIPreviewTarget) -> UITargetedPreview
  @available(swift, obsoleted: 3, renamed: "retargetedPreview(with:)")
  func retargetedPreviewWithTarget(_ newTarget: UIPreviewTarget) -> UITargetedPreview
  @available(iOS 13.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
