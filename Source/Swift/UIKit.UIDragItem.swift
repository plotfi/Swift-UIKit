@_exported import Foundation

@available(iOS 11.0, *)
class UIDragItem : NSObject {
  init(itemProvider: NSItemProvider)
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  var itemProvider: NSItemProvider { get }
  var localObject: Any?
  var previewProvider: (() -> UIDragPreview?)?
}
