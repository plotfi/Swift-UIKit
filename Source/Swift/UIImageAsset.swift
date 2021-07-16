@_exported import Foundation

@available(iOS 8.0, *)
class UIImageAsset : NSObject, NSSecureCoding {
  init()
  init?(coder: NSCoder)
  func image(with configuration: UIImage.Configuration) -> UIImage
  @available(swift, obsoleted: 3, renamed: "image(with:)")
  func imageWithConfiguration(_ configuration: UIImage.Configuration) -> UIImage
  func register(_ image: UIImage, with configuration: UIImage.Configuration)
  @available(swift, obsoleted: 3, renamed: "register(_:with:)")
  func registerImage(_ image: UIImage, withConfiguration configuration: UIImage.Configuration)
  func unregisterImage(with configuration: UIImage.Configuration)
  @available(swift, obsoleted: 3, renamed: "unregisterImage(with:)")
  func unregisterImageWithConfiguration(_ configuration: UIImage.Configuration)
  func image(with traitCollection: UITraitCollection) -> UIImage
  @available(swift, obsoleted: 3, renamed: "image(with:)")
  func imageWithTraitCollection(_ traitCollection: UITraitCollection) -> UIImage
  func register(_ image: UIImage, with traitCollection: UITraitCollection)
  @available(swift, obsoleted: 3, renamed: "register(_:with:)")
  func registerImage(_ image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregister(imageWith traitCollection: UITraitCollection)
  @available(swift, obsoleted: 3, renamed: "unregister(imageWith:)")
  func unregisterImageWithTraitCollection(_ traitCollection: UITraitCollection)
  @available(iOS 8.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 8.0, *)
  func encode(with coder: NSCoder)
}
