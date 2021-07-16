@_exported import Foundation

@available(iOS 11.0, *)
class UIDragPreview : NSObject, NSCopying {
  init(view: UIView, parameters: UIDragPreviewParameters)
  convenience init(view: UIView)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var view: UIView { get }
  @NSCopying var parameters: UIDragPreviewParameters { get }
  @available(iOS 11.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
