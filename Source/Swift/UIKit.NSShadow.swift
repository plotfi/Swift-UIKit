@_exported import Foundation

@available(iOS 6.0, *)
class NSShadow : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder: NSCoder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: Any?
  @available(iOS 6.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 6.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 6.0, *)
  func encode(with coder: NSCoder)
}
