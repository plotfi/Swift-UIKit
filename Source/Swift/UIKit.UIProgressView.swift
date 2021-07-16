@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIProgressView.Style")
typealias UIProgressViewStyle = UIProgressView.Style
extension UIProgressView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var Default: UIProgressView.Style { get }
    case bar
    @available(swift, obsoleted: 3, renamed: "bar")
    static var Bar: UIProgressView.Style { get }
  }
}
@available(iOS 2.0, *)
class UIProgressView : UIView, NSCoding {
  init(frame: CGRect)
  init?(coder: NSCoder)
  convenience init(progressViewStyle style: UIProgressView.Style)
  var progressViewStyle: UIProgressView.Style
  var progress: Float
  @available(iOS 5.0, *)
  var progressTintColor: UIColor?
  @available(iOS 5.0, *)
  var trackTintColor: UIColor?
  @available(iOS 5.0, *)
  var progressImage: UIImage?
  @available(iOS 5.0, *)
  var trackImage: UIImage?
  @available(iOS 5.0, *)
  func setProgress(_ progress: Float, animated: Bool)
  @available(iOS 9.0, *)
  var observedProgress: Progress?
  convenience init()
}
