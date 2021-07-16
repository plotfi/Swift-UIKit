@_exported import Foundation

@available(iOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(blurEffect: UIBlurEffect)
  @available(swift, obsoleted: 3, renamed: "init(blurEffect:)")
  /*not inherited*/ init(forBlurEffect blurEffect: UIBlurEffect)
  @available(*, unavailable, renamed: "init(blurEffect:)", message: "Not available in Swift")
  class func effectForBlurEffect(_ blurEffect: UIBlurEffect) -> UIVibrancyEffect
  init()
  init?(coder: NSCoder)
}
@available(iOS 13.0, *)
enum UIVibrancyEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case label
  @available(swift, obsoleted: 3, renamed: "label")
  static var Label: UIVibrancyEffectStyle { get }
  case secondaryLabel
  @available(swift, obsoleted: 3, renamed: "secondaryLabel")
  static var SecondaryLabel: UIVibrancyEffectStyle { get }
  case tertiaryLabel
  @available(swift, obsoleted: 3, renamed: "tertiaryLabel")
  static var TertiaryLabel: UIVibrancyEffectStyle { get }
  case quaternaryLabel
  @available(swift, obsoleted: 3, renamed: "quaternaryLabel")
  static var QuaternaryLabel: UIVibrancyEffectStyle { get }
  case fill
  @available(swift, obsoleted: 3, renamed: "fill")
  static var Fill: UIVibrancyEffectStyle { get }
  case secondaryFill
  @available(swift, obsoleted: 3, renamed: "secondaryFill")
  static var SecondaryFill: UIVibrancyEffectStyle { get }
  case tertiaryFill
  @available(swift, obsoleted: 3, renamed: "tertiaryFill")
  static var TertiaryFill: UIVibrancyEffectStyle { get }
  case separator
  @available(swift, obsoleted: 3, renamed: "separator")
  static var Separator: UIVibrancyEffectStyle { get }
}
extension UIVibrancyEffect {
  @available(iOS 13.0, *)
  /*not inherited*/ init(blurEffect: UIBlurEffect, style: UIVibrancyEffectStyle)
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "init(blurEffect:style:)")
  /*not inherited*/ init(forBlurEffect blurEffect: UIBlurEffect, style: UIVibrancyEffectStyle)
  @available(iOS 13.0, *)
  @available(*, unavailable, renamed: "init(blurEffect:style:)", message: "Not available in Swift")
  class func effectForBlurEffect(_ blurEffect: UIBlurEffect, style: UIVibrancyEffectStyle) -> UIVibrancyEffect
}
