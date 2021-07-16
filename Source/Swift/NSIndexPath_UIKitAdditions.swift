@_exported import Foundation

extension NSIndexPath {
  convenience init(row: Int, section: Int)
  @available(swift, obsoleted: 3, renamed: "init(row:section:)")
  convenience init(forRow row: Int, inSection section: Int)
  @available(*, unavailable, renamed: "init(row:section:)", message: "Not available in Swift")
  class func indexPathForRow(_ row: Int, inSection section: Int) -> Self
  @available(iOS 6.0, *)
  convenience init(item: Int, section: Int)
  @available(iOS 6.0, *)
  @available(swift, obsoleted: 3, renamed: "init(item:section:)")
  convenience init(forItem item: Int, inSection section: Int)
  @available(iOS 6.0, *)
  @available(*, unavailable, renamed: "init(item:section:)", message: "Not available in Swift")
  class func indexPathForItem(_ item: Int, inSection section: Int) -> Self
  var section: Int { get }
  var row: Int { get }
  @available(iOS 6.0, *)
  var item: Int { get }
}
