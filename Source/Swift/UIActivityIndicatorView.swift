@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIActivityIndicatorView.Style")
typealias UIActivityIndicatorViewStyle = UIActivityIndicatorView.Style
extension UIActivityIndicatorView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    @available(iOS 13.0, *)
    case medium
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "medium")
    static var Medium: UIActivityIndicatorView.Style { get }
    @available(iOS 13.0, *)
    case large
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "large")
    static var Large: UIActivityIndicatorView.Style { get }
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.large")
    case whiteLarge
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.large")
    @available(swift, obsoleted: 3, renamed: "whiteLarge")
    static var WhiteLarge: UIActivityIndicatorView.Style { get }
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.medium")
    case white
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.medium")
    @available(swift, obsoleted: 3, renamed: "white")
    static var White: UIActivityIndicatorView.Style { get }
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.medium")
    case gray
    @available(iOS, introduced: 2.0, deprecated: 13.0, renamed: "UIActivityIndicatorView.Style.medium")
    @available(swift, obsoleted: 3, renamed: "gray")
    static var Gray: UIActivityIndicatorView.Style { get }
  }
}
@available(iOS 2.0, *)
class UIActivityIndicatorView : UIView, NSCoding {
  init(style: UIActivityIndicatorView.Style)
  @available(swift, obsoleted: 4.2, renamed: "init(style:)")
  init(activityIndicatorStyle style: UIActivityIndicatorView.Style)
  init(frame: CGRect)
  init(coder: NSCoder)
  var style: UIActivityIndicatorView.Style
  @available(swift, obsoleted: 4.2, renamed: "style")
  var activityIndicatorViewStyle: UIActivityIndicatorView.Style
  var hidesWhenStopped: Bool
  @available(iOS 5.0, *)
  var color: UIColor!
  func startAnimating()
  func stopAnimating()
  var isAnimating: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isAnimating")
  var animating: Bool { get }
  convenience init()
}
