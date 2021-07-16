@_exported import Foundation

@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIBlurEffect.Style")
typealias UIBlurEffectStyle = UIBlurEffect.Style
extension UIBlurEffect {
  @available(iOS 8.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case extraLight
    @available(swift, obsoleted: 3, renamed: "extraLight")
    static var ExtraLight: UIBlurEffect.Style { get }
    case light
    @available(swift, obsoleted: 3, renamed: "light")
    static var Light: UIBlurEffect.Style { get }
    case dark
    @available(swift, obsoleted: 3, renamed: "dark")
    static var Dark: UIBlurEffect.Style { get }
    @available(iOS, unavailable)
    case extraDark
    @available(iOS 10.0, *)
    case regular
    @available(iOS 10.0, *)
    @available(swift, obsoleted: 3, renamed: "regular")
    static var Regular: UIBlurEffect.Style { get }
    @available(iOS 10.0, *)
    case prominent
    @available(iOS 10.0, *)
    @available(swift, obsoleted: 3, renamed: "prominent")
    static var Prominent: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemUltraThinMaterial
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemUltraThinMaterial")
    static var SystemUltraThinMaterial: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemThinMaterial
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemThinMaterial")
    static var SystemThinMaterial: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemMaterial
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemMaterial")
    static var SystemMaterial: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemThickMaterial
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemThickMaterial")
    static var SystemThickMaterial: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemChromeMaterial
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemChromeMaterial")
    static var SystemChromeMaterial: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemUltraThinMaterialLight
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemUltraThinMaterialLight")
    static var SystemUltraThinMaterialLight: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemThinMaterialLight
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemThinMaterialLight")
    static var SystemThinMaterialLight: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemMaterialLight
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemMaterialLight")
    static var SystemMaterialLight: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemThickMaterialLight
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemThickMaterialLight")
    static var SystemThickMaterialLight: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemChromeMaterialLight
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemChromeMaterialLight")
    static var SystemChromeMaterialLight: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemUltraThinMaterialDark
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemUltraThinMaterialDark")
    static var SystemUltraThinMaterialDark: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemThinMaterialDark
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemThinMaterialDark")
    static var SystemThinMaterialDark: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemMaterialDark
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemMaterialDark")
    static var SystemMaterialDark: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemThickMaterialDark
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemThickMaterialDark")
    static var SystemThickMaterialDark: UIBlurEffect.Style { get }
    @available(iOS 13.0, *)
    case systemChromeMaterialDark
    @available(iOS 13.0, *)
    @available(swift, obsoleted: 3, renamed: "systemChromeMaterialDark")
    static var SystemChromeMaterialDark: UIBlurEffect.Style { get }
  }
}
@available(iOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffect.Style)
  @available(*, unavailable, renamed: "init(style:)", message: "Not available in Swift")
  class func effectWithStyle(_ style: UIBlurEffect.Style) -> UIBlurEffect
  init()
  init?(coder: NSCoder)
}
