@_exported import Foundation

@available(iOS 8.0, *)
class UIVisualEffect : NSObject, NSCopying, NSSecureCoding {
  init()
  @available(iOS 8.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 8.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
