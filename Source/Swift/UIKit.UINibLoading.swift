@_exported import Foundation

@available(swift, obsoleted: 3, renamed: "UINib.OptionsKey")
typealias UINibOptionsKey = UINib.OptionsKey
extension UINib {
  struct OptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(iOS 3.0, *)
@available(swift, obsoleted: 3, renamed: "UINib.OptionsKey.externalObjects")
let UINibExternalObjects: UINib.OptionsKey
extension UINib.OptionsKey {
  @available(iOS 3.0, *)
  static let externalObjects: UINib.OptionsKey
}
extension Bundle {
  func loadNibNamed(_ name: String, owner: Any?, options: [UINib.OptionsKey : Any]? = nil) -> [Any]?
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(iOS 8.0, *)
  class func prepareForInterfaceBuilder()
  @available(iOS 8.0, *)
  func prepareForInterfaceBuilder()
}
@available(iOS, unavailable, introduced: 2.0, deprecated: 3.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
let UINibProxiedObjectsKey: String
