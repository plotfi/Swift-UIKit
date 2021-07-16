@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIImage.Configuration")
typealias UIImageConfiguration = UIImage.Configuration
extension UIImage {
  @available(iOS 13.0, *)
  class Configuration : NSObject, NSCopying, NSSecureCoding {
    @available(*, unavailable)
    class func new() -> Self
    @available(*, unavailable)
    init()
    var traitCollection: UITraitCollection? { get }
    func withTraitCollection(_ traitCollection: UITraitCollection?) -> Self
    @available(swift, obsoleted: 3, renamed: "withTraitCollection(_:)")
    func configurationWithTraitCollection(_ traitCollection: UITraitCollection?) -> Self
    func applying(_ otherConfiguration: UIImage.Configuration?) -> Self
    @available(swift, obsoleted: 3, renamed: "applying(_:)")
    func configurationByApplyingConfiguration(_ otherConfiguration: UIImage.Configuration?) -> Self
    @available(iOS 13.0, *)
    class var supportsSecureCoding: Bool { get }
    @available(iOS 13.0, *)
    func copy(with zone: NSZone? = nil) -> Any
    @available(iOS 13.0, *)
    func encode(with coder: NSCoder)
    init?(coder: NSCoder)
  }
}
