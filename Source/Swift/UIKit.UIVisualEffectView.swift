@_exported import Foundation

@available(iOS 8.0, *)
class UIVisualEffectView : UIView, NSSecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 8.0, *)
  class var supportsSecureCoding: Bool { get }
}
