@_exported import Foundation

@available(iOS 4.0, *)
class UINib : NSObject {
  /*not inherited*/ init(nibName name: String, bundle bundleOrNil: Bundle?)
  @available(*, unavailable, renamed: "init(nibName:bundle:)", message: "Not available in Swift")
  class func nibWithNibName(_ name: String, bundle bundleOrNil: Bundle?) -> UINib
  /*not inherited*/ init(data: Data, bundle bundleOrNil: Bundle?)
  @available(*, unavailable, renamed: "init(data:bundle:)", message: "Not available in Swift")
  class func nibWithData(_ data: Data, bundle bundleOrNil: Bundle?) -> UINib
  func instantiate(withOwner ownerOrNil: Any?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> [Any]
  @available(swift, obsoleted: 3, renamed: "instantiate(withOwner:options:)")
  func instantiateWithOwner(_ ownerOrNil: Any?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> [Any]
  init()
}
