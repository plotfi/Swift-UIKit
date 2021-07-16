@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UICollectionViewUpdateItem.Action")
typealias UICollectionUpdateAction = UICollectionViewUpdateItem.Action
extension UICollectionViewUpdateItem {
  enum Action : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case insert
    @available(swift, obsoleted: 3, renamed: "insert")
    static var Insert: UICollectionViewUpdateItem.Action { get }
    case delete
    @available(swift, obsoleted: 3, renamed: "delete")
    static var Delete: UICollectionViewUpdateItem.Action { get }
    case reload
    @available(swift, obsoleted: 3, renamed: "reload")
    static var Reload: UICollectionViewUpdateItem.Action { get }
    case move
    @available(swift, obsoleted: 3, renamed: "move")
    static var Move: UICollectionViewUpdateItem.Action { get }
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UICollectionViewUpdateItem.Action { get }
  }
}
@available(iOS 6.0, *)
class UICollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: IndexPath? { get }
  var indexPathAfterUpdate: IndexPath? { get }
  var updateAction: UICollectionViewUpdateItem.Action { get }
  init()
}
