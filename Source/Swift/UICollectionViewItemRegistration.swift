@_exported import Foundation

typealias __UICollectionViewCellRegistrationConfigurationHandler = (UICollectionViewCell, IndexPath, Any) -> Void
@available(iOS 14.0, *)
class __UICollectionViewCellRegistration : NSObject {
  convenience init(cellClass: AnyClass, configurationHandler: @escaping __UICollectionViewCellRegistrationConfigurationHandler)
  @available(*, unavailable, renamed: "init(cellClass:configurationHandler:)", message: "Not available in Swift")
  class func registrationWithCellClass(_ cellClass: AnyClass, configurationHandler: @escaping __UICollectionViewCellRegistrationConfigurationHandler) -> Self
  convenience init(cellNib: UINib, configurationHandler: @escaping __UICollectionViewCellRegistrationConfigurationHandler)
  @available(*, unavailable, renamed: "init(cellNib:configurationHandler:)", message: "Not available in Swift")
  class func registrationWithCellNib(_ cellNib: UINib, configurationHandler: @escaping __UICollectionViewCellRegistrationConfigurationHandler) -> Self
  var cellClass: AnyClass? { get }
  var cellNib: UINib? { get }
  var configurationHandler: __UICollectionViewCellRegistrationConfigurationHandler { get }
  init()
}
typealias __UICollectionViewSupplementaryRegistrationConfigurationHandler = (UICollectionReusableView, String, IndexPath) -> Void
@available(iOS 14.0, *)
class __UICollectionViewSupplementaryRegistration : NSObject {
  convenience init(supplementaryClass: AnyClass, elementKind: String, configurationHandler: @escaping __UICollectionViewSupplementaryRegistrationConfigurationHandler)
  @available(*, unavailable, renamed: "init(supplementaryClass:elementKind:configurationHandler:)", message: "Not available in Swift")
  class func registrationWithSupplementaryClass(_ supplementaryClass: AnyClass, elementKind: String, configurationHandler: @escaping __UICollectionViewSupplementaryRegistrationConfigurationHandler) -> Self
  convenience init(supplementaryNib: UINib, elementKind: String, configurationHandler: @escaping __UICollectionViewSupplementaryRegistrationConfigurationHandler)
  @available(*, unavailable, renamed: "init(supplementaryNib:elementKind:configurationHandler:)", message: "Not available in Swift")
  class func registrationWithSupplementaryNib(_ supplementaryNib: UINib, elementKind: String, configurationHandler: @escaping __UICollectionViewSupplementaryRegistrationConfigurationHandler) -> Self
  var supplementaryClass: AnyClass? { get }
  var supplementaryNib: UINib? { get }
  var elementKind: String { get }
  var configurationHandler: __UICollectionViewSupplementaryRegistrationConfigurationHandler { get }
  init()
}
