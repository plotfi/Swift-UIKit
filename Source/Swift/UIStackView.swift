@_exported import Foundation

@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIStackView.Distribution")
typealias UIStackViewDistribution = UIStackView.Distribution
extension UIStackView {
  @available(iOS 9.0, *)
  enum Distribution : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case fill
    @available(swift, obsoleted: 3, renamed: "fill")
    static var Fill: UIStackView.Distribution { get }
    case fillEqually
    @available(swift, obsoleted: 3, renamed: "fillEqually")
    static var FillEqually: UIStackView.Distribution { get }
    case fillProportionally
    @available(swift, obsoleted: 3, renamed: "fillProportionally")
    static var FillProportionally: UIStackView.Distribution { get }
    case equalSpacing
    @available(swift, obsoleted: 3, renamed: "equalSpacing")
    static var EqualSpacing: UIStackView.Distribution { get }
    case equalCentering
    @available(swift, obsoleted: 3, renamed: "equalCentering")
    static var EqualCentering: UIStackView.Distribution { get }
  }
  @available(iOS 9.0, *)
  enum Alignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case fill
    @available(swift, obsoleted: 3, renamed: "fill")
    static var Fill: UIStackView.Alignment { get }
    case leading
    @available(swift, obsoleted: 3, renamed: "leading")
    static var Leading: UIStackView.Alignment { get }
    static var top: UIStackView.Alignment { get }
    case firstBaseline
    @available(swift, obsoleted: 3, renamed: "firstBaseline")
    static var FirstBaseline: UIStackView.Alignment { get }
    case center
    @available(swift, obsoleted: 3, renamed: "center")
    static var Center: UIStackView.Alignment { get }
    case trailing
    @available(swift, obsoleted: 3, renamed: "trailing")
    static var Trailing: UIStackView.Alignment { get }
    static var bottom: UIStackView.Alignment { get }
    case lastBaseline
    @available(swift, obsoleted: 3, renamed: "lastBaseline")
    static var LastBaseline: UIStackView.Alignment { get }
  }
  @available(iOS 11.0, *)
  class let spacingUseDefault: CGFloat
  @available(iOS 11.0, *)
  class let spacingUseSystem: CGFloat
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIStackView.Alignment")
typealias UIStackViewAlignment = UIStackView.Alignment
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIStackView.spacingUseDefault")
let UIStackViewSpacingUseDefault: CGFloat
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIStackView.spacingUseSystem")
let UIStackViewSpacingUseSystem: CGFloat
@available(iOS 9.0, *)
class UIStackView : UIView {
  init(frame: CGRect)
  init(coder: NSCoder)
  convenience init(arrangedSubviews views: [UIView])
  var arrangedSubviews: [UIView] { get }
  func addArrangedSubview(_ view: UIView)
  func removeArrangedSubview(_ view: UIView)
  func insertArrangedSubview(_ view: UIView, at stackIndex: Int)
  @available(swift, obsoleted: 3, renamed: "insertArrangedSubview(_:at:)")
  func insertArrangedSubview(_ view: UIView, atIndex stackIndex: Int)
  var axis: NSLayoutConstraint.Axis
  var distribution: UIStackView.Distribution
  var alignment: UIStackView.Alignment
  var spacing: CGFloat
  @available(iOS 11.0, *)
  func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "setCustomSpacing(_:after:)")
  func setCustomSpacing(_ spacing: CGFloat, afterView arrangedSubview: UIView)
  @available(iOS 11.0, *)
  func customSpacing(after arrangedSubview: UIView) -> CGFloat
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "customSpacing(after:)")
  func customSpacingAfterView(_ arrangedSubview: UIView) -> CGFloat
  var isBaselineRelativeArrangement: Bool
  @available(swift, obsoleted: 3, renamed: "isBaselineRelativeArrangement")
  var baselineRelativeArrangement: Bool
  var isLayoutMarginsRelativeArrangement: Bool
  @available(swift, obsoleted: 3, renamed: "isLayoutMarginsRelativeArrangement")
  var layoutMarginsRelativeArrangement: Bool
  convenience init()
}
