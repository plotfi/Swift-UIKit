@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIImpactFeedbackGenerator.FeedbackStyle")
typealias UIImpactFeedbackStyle = UIImpactFeedbackGenerator.FeedbackStyle
extension UIImpactFeedbackGenerator {
  enum FeedbackStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case light
    @available(swift, obsoleted: 3, renamed: "light")
    static var Light: UIImpactFeedbackGenerator.FeedbackStyle { get }
    case medium
    @available(swift, obsoleted: 3, renamed: "medium")
    static var Medium: UIImpactFeedbackGenerator.FeedbackStyle { get }
    case heavy
    @available(swift, obsoleted: 3, renamed: "heavy")
    static var Heavy: UIImpactFeedbackGenerator.FeedbackStyle { get }
    @available(iOS 13.0, *)
    case soft
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "soft")
    static var Soft: UIImpactFeedbackGenerator.FeedbackStyle { get }
    @available(iOS 13.0, *)
    case rigid
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "rigid")
    static var Rigid: UIImpactFeedbackGenerator.FeedbackStyle { get }
  }
}
@available(iOS 10.0, *)
class UIImpactFeedbackGenerator : UIFeedbackGenerator {
  init(style: UIImpactFeedbackGenerator.FeedbackStyle)

  /// call when your UI element impacts something else
  func impactOccurred()

  /// call when your UI element impacts something else with a specific intensity [0.0, 1.0]
  @available(iOS 13.0, *)
  func impactOccurred(intensity: CGFloat)

  /// call when your UI element impacts something else with a specific intensity [0.0, 1.0]
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "impactOccurred(intensity:)")
  func impactOccurredWithIntensity(_ intensity: CGFloat)
  init()
}
