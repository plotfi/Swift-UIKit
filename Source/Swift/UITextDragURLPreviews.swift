@_exported import Foundation

extension UIDragPreview {
  @available(iOS 11.0, *)
  convenience init(for url: URL)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(for:)")
  convenience init(forURL url: URL)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(for:)", message: "Not available in Swift")
  class func previewForURL(_ url: URL) -> Self
  @available(iOS 11.0, *)
  convenience init(for url: URL, title: String?)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(for:title:)")
  convenience init(forURL url: URL, title: String?)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(for:title:)", message: "Not available in Swift")
  class func previewForURL(_ url: URL, title: String?) -> Self
}
extension UITargetedDragPreview {
  @available(iOS 11.0, *)
  convenience init(for url: URL, target: UIDragPreviewTarget)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(for:target:)")
  convenience init(forURL url: URL, target: UIDragPreviewTarget)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(for:target:)", message: "Not available in Swift")
  class func previewForURL(_ url: URL, target: UIDragPreviewTarget) -> Self
  @available(iOS 11.0, *)
  convenience init(for url: URL, title: String?, target: UIDragPreviewTarget)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(for:title:target:)")
  convenience init(forURL url: URL, title: String?, target: UIDragPreviewTarget)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(for:title:target:)", message: "Not available in Swift")
  class func previewForURL(_ url: URL, title: String?, target: UIDragPreviewTarget) -> Self
}
