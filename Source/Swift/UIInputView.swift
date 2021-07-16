@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIInputView.Style")
typealias UIInputViewStyle = UIInputView.Style
extension UIInputView {
  @available(iOS 7.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UIInputView.Style { get }
    case keyboard
    @available(swift, obsoleted: 3, renamed: "keyboard")
    static var Keyboard: UIInputView.Style { get }
  }
}
@available(iOS 7.0, *)
class UIInputView : UIView {
  var inputViewStyle: UIInputView.Style { get }
  @available(iOS 9.0, *)
  var allowsSelfSizing: Bool
  init(frame: CGRect, inputViewStyle: UIInputView.Style)
  init?(coder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
}
