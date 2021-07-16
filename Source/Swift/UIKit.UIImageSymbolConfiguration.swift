@_exported import Foundation

@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIImage.SymbolScale")
typealias UIImageSymbolScale = UIImage.SymbolScale
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIImage.SymbolWeight")
typealias UIImageSymbolWeight = UIImage.SymbolWeight
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIImageSymbolWeight.fontWeight(self:)")
func UIFontWeightForImageSymbolWeight(_ symbolWeight: UIImage.SymbolWeight) -> UIFont.Weight
extension UIImage.SymbolWeight {
  @available(iOS 13.0, *)
  func fontWeight() -> UIFont.Weight
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontWeight.symbolWeight(self:)")
func UIImageSymbolWeightForFontWeight(_ fontWeight: UIFont.Weight) -> UIImage.SymbolWeight
extension UIFont.Weight {
  @available(iOS 13.0, *)
  func symbolWeight() -> UIImage.SymbolWeight
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIImage.SymbolConfiguration")
typealias UIImageSymbolConfiguration = UIImage.SymbolConfiguration
extension UIImage {
  @available(iOS 13.0, *)
  class SymbolConfiguration : UIImage.Configuration {
    class var unspecified: UIImage.SymbolConfiguration { get }
    @available(swift, obsoleted: 3, renamed: "unspecified")
    class var unspecifiedConfiguration: UIImage.SymbolConfiguration { get }
    convenience init(scale: UIImage.SymbolScale)
    @available(*, unavailable, renamed: "init(scale:)", message: "Not available in Swift")
    class func configurationWithScale(_ scale: UIImage.SymbolScale) -> Self
    convenience init(pointSize: CGFloat)
    @available(*, unavailable, renamed: "init(pointSize:)", message: "Not available in Swift")
    class func configurationWithPointSize(_ pointSize: CGFloat) -> Self
    convenience init(weight: UIImage.SymbolWeight)
    @available(*, unavailable, renamed: "init(weight:)", message: "Not available in Swift")
    class func configurationWithWeight(_ weight: UIImage.SymbolWeight) -> Self
    convenience init(pointSize: CGFloat, weight: UIImage.SymbolWeight)
    @available(*, unavailable, renamed: "init(pointSize:weight:)", message: "Not available in Swift")
    class func configurationWithPointSize(_ pointSize: CGFloat, weight: UIImage.SymbolWeight) -> Self
    convenience init(pointSize: CGFloat, weight: UIImage.SymbolWeight, scale: UIImage.SymbolScale)
    @available(*, unavailable, renamed: "init(pointSize:weight:scale:)", message: "Not available in Swift")
    class func configurationWithPointSize(_ pointSize: CGFloat, weight: UIImage.SymbolWeight, scale: UIImage.SymbolScale) -> Self
    convenience init(textStyle: UIFont.TextStyle)
    @available(*, unavailable, renamed: "init(textStyle:)", message: "Not available in Swift")
    class func configurationWithTextStyle(_ textStyle: UIFont.TextStyle) -> Self
    convenience init(textStyle: UIFont.TextStyle, scale: UIImage.SymbolScale)
    @available(*, unavailable, renamed: "init(textStyle:scale:)", message: "Not available in Swift")
    class func configurationWithTextStyle(_ textStyle: UIFont.TextStyle, scale: UIImage.SymbolScale) -> Self
    convenience init(font: UIFont)
    @available(*, unavailable, renamed: "init(font:)", message: "Not available in Swift")
    class func configurationWithFont(_ font: UIFont) -> Self
    convenience init(font: UIFont, scale: UIImage.SymbolScale)
    @available(*, unavailable, renamed: "init(font:scale:)", message: "Not available in Swift")
    class func configurationWithFont(_ font: UIFont, scale: UIImage.SymbolScale) -> Self
    func configurationWithoutTextStyle() -> Self
    func configurationWithoutScale() -> Self
    func configurationWithoutWeight() -> Self
    func configurationWithoutPointSizeAndWeight() -> Self
    func isEqual(to otherConfiguration: UIImage.SymbolConfiguration?) -> Bool
    @available(swift, obsoleted: 3, renamed: "isEqual(to:)")
    func isEqualToConfiguration(_ otherConfiguration: UIImage.SymbolConfiguration?) -> Bool
    @available(*, unavailable)
    init()
    init?(coder: NSCoder)
  }
  @available(iOS 13.0, *)
  enum SymbolScale : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case `default`
    @available(swift, obsoleted: 3, renamed: "default")
    static var UIImageSymbolScaleDefault: UIImage.SymbolScale { get }
    case unspecified
    @available(swift, obsoleted: 3, renamed: "unspecified")
    static var UIImageSymbolScaleUnspecified: UIImage.SymbolScale { get }
    case small
    @available(swift, obsoleted: 3, renamed: "small")
    static var UIImageSymbolScaleSmall: UIImage.SymbolScale { get }
    case medium
    @available(swift, obsoleted: 3, renamed: "medium")
    static var UIImageSymbolScaleMedium: UIImage.SymbolScale { get }
    case large
    @available(swift, obsoleted: 3, renamed: "large")
    static var UIImageSymbolScaleLarge: UIImage.SymbolScale { get }
  }
  @available(iOS 13.0, *)
  enum SymbolWeight : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unspecified
    @available(swift, obsoleted: 3, renamed: "unspecified")
    static var UIImageSymbolWeightUnspecified: UIImage.SymbolWeight { get }
    case ultraLight
    @available(swift, obsoleted: 3, renamed: "ultraLight")
    static var UIImageSymbolWeightUltraLight: UIImage.SymbolWeight { get }
    case thin
    @available(swift, obsoleted: 3, renamed: "thin")
    static var UIImageSymbolWeightThin: UIImage.SymbolWeight { get }
    case light
    @available(swift, obsoleted: 3, renamed: "light")
    static var UIImageSymbolWeightLight: UIImage.SymbolWeight { get }
    case regular
    @available(swift, obsoleted: 3, renamed: "regular")
    static var UIImageSymbolWeightRegular: UIImage.SymbolWeight { get }
    case medium
    @available(swift, obsoleted: 3, renamed: "medium")
    static var UIImageSymbolWeightMedium: UIImage.SymbolWeight { get }
    case semibold
    @available(swift, obsoleted: 3, renamed: "semibold")
    static var UIImageSymbolWeightSemibold: UIImage.SymbolWeight { get }
    case bold
    @available(swift, obsoleted: 3, renamed: "bold")
    static var UIImageSymbolWeightBold: UIImage.SymbolWeight { get }
    case heavy
    @available(swift, obsoleted: 3, renamed: "heavy")
    static var UIImageSymbolWeightHeavy: UIImage.SymbolWeight { get }
    case black
    @available(swift, obsoleted: 3, renamed: "black")
    static var UIImageSymbolWeightBlack: UIImage.SymbolWeight { get }
  }
}
