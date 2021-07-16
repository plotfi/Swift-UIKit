@_exported import Foundation

@available(iOS 7.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIFontDescriptor.SymbolicTraits")
typealias UIFontDescriptorSymbolicTraits = UIFontDescriptor.SymbolicTraits
extension UIFontDescriptor {
  @available(iOS 7.0, *)
  struct SymbolicTraits : OptionSet {
    init(rawValue: UInt32)
    let rawValue: UInt32
    typealias RawValue = UInt32
    typealias Element = UIFontDescriptor.SymbolicTraits
    typealias ArrayLiteralElement = UIFontDescriptor.SymbolicTraits
    static var traitItalic: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitItalic")
    static var TraitItalic: UIFontDescriptor.SymbolicTraits { get }
    static var traitBold: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitBold")
    static var TraitBold: UIFontDescriptor.SymbolicTraits { get }
    static var traitExpanded: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitExpanded")
    static var TraitExpanded: UIFontDescriptor.SymbolicTraits { get }
    static var traitCondensed: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitCondensed")
    static var TraitCondensed: UIFontDescriptor.SymbolicTraits { get }
    static var traitMonoSpace: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitMonoSpace")
    static var TraitMonoSpace: UIFontDescriptor.SymbolicTraits { get }
    static var traitVertical: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitVertical")
    static var TraitVertical: UIFontDescriptor.SymbolicTraits { get }
    static var traitUIOptimized: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitUIOptimized")
    static var TraitUIOptimized: UIFontDescriptor.SymbolicTraits { get }
    static var traitTightLeading: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitTightLeading")
    static var TraitTightLeading: UIFontDescriptor.SymbolicTraits { get }
    static var traitLooseLeading: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "traitLooseLeading")
    static var TraitLooseLeading: UIFontDescriptor.SymbolicTraits { get }
    static var classMask: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classMask")
    static var ClassMask: UIFontDescriptor.SymbolicTraits { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    static var classUnknown: UIFontDescriptor.SymbolicTraits { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "classUnknown")
    static var ClassUnknown: UIFontDescriptor.SymbolicTraits { get }
    static var classOldStyleSerifs: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classOldStyleSerifs")
    static var ClassOldStyleSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classTransitionalSerifs: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classTransitionalSerifs")
    static var ClassTransitionalSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classModernSerifs: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classModernSerifs")
    static var ClassModernSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classClarendonSerifs: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classClarendonSerifs")
    static var ClassClarendonSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classSlabSerifs: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classSlabSerifs")
    static var ClassSlabSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classFreeformSerifs: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classFreeformSerifs")
    static var ClassFreeformSerifs: UIFontDescriptor.SymbolicTraits { get }
    static var classSansSerif: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classSansSerif")
    static var ClassSansSerif: UIFontDescriptor.SymbolicTraits { get }
    static var classOrnamentals: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classOrnamentals")
    static var ClassOrnamentals: UIFontDescriptor.SymbolicTraits { get }
    static var classScripts: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classScripts")
    static var ClassScripts: UIFontDescriptor.SymbolicTraits { get }
    static var classSymbolic: UIFontDescriptor.SymbolicTraits { get }
    @available(swift, obsoleted: 3, renamed: "classSymbolic")
    static var ClassSymbolic: UIFontDescriptor.SymbolicTraits { get }
  }
  typealias Class = Int
  struct AttributeName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  struct TraitKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  struct FeatureKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  struct SystemDesign : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIFontDescriptor.Class")
typealias UIFontDescriptorClass = UIFontDescriptor.Class
@available(swift, obsoleted: 4.2, renamed: "UIFont.TextStyle")
typealias UIFontTextStyle = UIFont.TextStyle
extension UIFont {
  struct TextStyle : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  struct Weight : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: CGFloat)
    init(rawValue: CGFloat)
    let rawValue: CGFloat
    typealias RawValue = CGFloat
  }
}
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName")
typealias UIFontDescriptorAttributeName = UIFontDescriptor.AttributeName
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.TraitKey")
typealias UIFontDescriptorTraitKey = UIFontDescriptor.TraitKey
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.FeatureKey")
typealias UIFontDescriptorFeatureKey = UIFontDescriptor.FeatureKey
@available(swift, obsoleted: 3, renamed: "UIFont.Weight")
typealias UIFontWeight = UIFont.Weight
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.SystemDesign")
typealias UIFontDescriptorSystemDesign = UIFontDescriptor.SystemDesign
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.SystemDesign.default")
let UIFontDescriptorSystemDesignDefault: UIFontDescriptor.SystemDesign
extension UIFontDescriptor.SystemDesign {
  @available(iOS 13.0, *)
  static let `default`: UIFontDescriptor.SystemDesign
  @available(iOS 13.0, *)
  static let rounded: UIFontDescriptor.SystemDesign
  @available(iOS 13.0, *)
  static let serif: UIFontDescriptor.SystemDesign
  @available(iOS 13.0, *)
  static let monospaced: UIFontDescriptor.SystemDesign
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.SystemDesign.rounded")
let UIFontDescriptorSystemDesignRounded: UIFontDescriptor.SystemDesign
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.SystemDesign.serif")
let UIFontDescriptorSystemDesignSerif: UIFontDescriptor.SystemDesign
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.SystemDesign.monospaced")
let UIFontDescriptorSystemDesignMonospaced: UIFontDescriptor.SystemDesign
@available(iOS 7.0, *)
class UIFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  convenience init()
  init?(coder: NSCoder)
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptor.SymbolicTraits { get }
  func object(forKey anAttribute: UIFontDescriptor.AttributeName) -> Any?
  @available(swift, obsoleted: 3, renamed: "object(forKey:)")
  func objectForKey(_ anAttribute: UIFontDescriptor.AttributeName) -> Any?
  var fontAttributes: [UIFontDescriptor.AttributeName : Any] { get }
  func matchingFontDescriptors(withMandatoryKeys mandatoryKeys: Set<UIFontDescriptor.AttributeName>?) -> [UIFontDescriptor]
  @available(swift, obsoleted: 3, renamed: "matchingFontDescriptors(withMandatoryKeys:)")
  func matchingFontDescriptorsWithMandatoryKeys(_ mandatoryKeys: Set<UIFontDescriptor.AttributeName>?) -> [UIFontDescriptor]
  @available(*, unavailable, message: "superseded by import of -[UIFontDescriptor initWithFontAttributes:]")
  /*not inherited*/ init(fontAttributes attributes: [UIFontDescriptor.AttributeName : Any] = [:])
  @available(*, unavailable, renamed: "init(fontAttributes:)", message: "Not available in Swift")
  class func fontDescriptorWithFontAttributes(_ attributes: [UIFontDescriptor.AttributeName : Any] = [:]) -> UIFontDescriptor
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  @available(*, unavailable, renamed: "init(name:size:)", message: "Not available in Swift")
  class func fontDescriptorWithName(_ fontName: String, size: CGFloat) -> UIFontDescriptor
  /*not inherited*/ init(name fontName: String, matrix: CGAffineTransform)
  @available(*, unavailable, renamed: "init(name:matrix:)", message: "Not available in Swift")
  class func fontDescriptorWithName(_ fontName: String, matrix: CGAffineTransform) -> UIFontDescriptor
  class func preferredFontDescriptor(withTextStyle style: UIFont.TextStyle) -> UIFontDescriptor
  @available(swift, obsoleted: 3, renamed: "preferredFontDescriptor(withTextStyle:)")
  class func preferredFontDescriptorWithTextStyle(_ style: UIFont.TextStyle) -> UIFontDescriptor
  @available(iOS 10.0, *)
  class func preferredFontDescriptor(withTextStyle style: UIFont.TextStyle, compatibleWith traitCollection: UITraitCollection?) -> UIFontDescriptor
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "preferredFontDescriptor(withTextStyle:compatibleWith:)")
  class func preferredFontDescriptorWithTextStyle(_ style: UIFont.TextStyle, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> UIFontDescriptor
  init(fontAttributes attributes: [UIFontDescriptor.AttributeName : Any] = [:])
  func addingAttributes(_ attributes: [UIFontDescriptor.AttributeName : Any] = [:]) -> UIFontDescriptor
  @available(swift, obsoleted: 3, renamed: "addingAttributes(_:)")
  func fontDescriptorByAddingAttributes(_ attributes: [UIFontDescriptor.AttributeName : Any] = [:]) -> UIFontDescriptor
  func withSize(_ newPointSize: CGFloat) -> UIFontDescriptor
  @available(swift, obsoleted: 3, renamed: "withSize(_:)")
  func fontDescriptorWithSize(_ newPointSize: CGFloat) -> UIFontDescriptor
  func withMatrix(_ matrix: CGAffineTransform) -> UIFontDescriptor
  @available(swift, obsoleted: 3, renamed: "withMatrix(_:)")
  func fontDescriptorWithMatrix(_ matrix: CGAffineTransform) -> UIFontDescriptor
  func withFace(_ newFace: String) -> UIFontDescriptor
  @available(swift, obsoleted: 3, renamed: "withFace(_:)")
  func fontDescriptorWithFace(_ newFace: String) -> UIFontDescriptor
  func withFamily(_ newFamily: String) -> UIFontDescriptor
  @available(swift, obsoleted: 3, renamed: "withFamily(_:)")
  func fontDescriptorWithFamily(_ newFamily: String) -> UIFontDescriptor
  func withSymbolicTraits(_ symbolicTraits: UIFontDescriptor.SymbolicTraits) -> UIFontDescriptor?
  @available(swift, obsoleted: 3, renamed: "withSymbolicTraits(_:)")
  func fontDescriptorWithSymbolicTraits(_ symbolicTraits: UIFontDescriptor.SymbolicTraits) -> UIFontDescriptor?
  @available(iOS 13.0, *)
  func withDesign(_ design: UIFontDescriptor.SystemDesign) -> UIFontDescriptor?
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "withDesign(_:)")
  func fontDescriptorWithDesign(_ design: UIFontDescriptor.SystemDesign) -> UIFontDescriptor?
  @available(iOS 7.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 7.0, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 7.0, *)
  func encode(with coder: NSCoder)
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.family")
let UIFontDescriptorFamilyAttribute: UIFontDescriptor.AttributeName
extension UIFontDescriptor.AttributeName {
  @available(iOS 7.0, *)
  static let family: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.family")
  static let UIFontDescriptorFamilyAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let name: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.name")
  static let UIFontDescriptorNameAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let face: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.face")
  static let UIFontDescriptorFaceAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let size: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.size")
  static let UIFontDescriptorSizeAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let visibleName: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.visibleName")
  static let UIFontDescriptorVisibleNameAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let matrix: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.matrix")
  static let UIFontDescriptorMatrixAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let characterSet: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.characterSet")
  static let UIFontDescriptorCharacterSetAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let cascadeList: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.cascadeList")
  static let UIFontDescriptorCascadeListAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let traits: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.traits")
  static let UIFontDescriptorTraitsAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let fixedAdvance: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.fixedAdvance")
  static let UIFontDescriptorFixedAdvanceAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let featureSettings: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.featureSettings")
  static let UIFontDescriptorFeatureSettingsAttribute: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  static let textStyle: UIFontDescriptor.AttributeName
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.AttributeName.textStyle")
  static let UIFontDescriptorTextStyleAttribute: UIFontDescriptor.AttributeName
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.name")
let UIFontDescriptorNameAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.face")
let UIFontDescriptorFaceAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.size")
let UIFontDescriptorSizeAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.visibleName")
let UIFontDescriptorVisibleNameAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.matrix")
let UIFontDescriptorMatrixAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.characterSet")
let UIFontDescriptorCharacterSetAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.cascadeList")
let UIFontDescriptorCascadeListAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.traits")
let UIFontDescriptorTraitsAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.fixedAdvance")
let UIFontDescriptorFixedAdvanceAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.featureSettings")
let UIFontDescriptorFeatureSettingsAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.AttributeName.textStyle")
let UIFontDescriptorTextStyleAttribute: UIFontDescriptor.AttributeName
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.TraitKey.symbolic")
let UIFontSymbolicTrait: UIFontDescriptor.TraitKey
extension UIFontDescriptor.TraitKey {
  @available(iOS 7.0, *)
  static let symbolic: UIFontDescriptor.TraitKey
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.TraitKey.symbolic")
  static let UIFontSymbolicTrait: UIFontDescriptor.TraitKey
  @available(iOS 7.0, *)
  static let weight: UIFontDescriptor.TraitKey
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.TraitKey.weight")
  static let UIFontWeightTrait: UIFontDescriptor.TraitKey
  @available(iOS 7.0, *)
  static let width: UIFontDescriptor.TraitKey
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.TraitKey.width")
  static let UIFontWidthTrait: UIFontDescriptor.TraitKey
  @available(iOS 7.0, *)
  static let slant: UIFontDescriptor.TraitKey
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.TraitKey.slant")
  static let UIFontSlantTrait: UIFontDescriptor.TraitKey
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.TraitKey.weight")
let UIFontWeightTrait: UIFontDescriptor.TraitKey
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.TraitKey.width")
let UIFontWidthTrait: UIFontDescriptor.TraitKey
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.TraitKey.slant")
let UIFontSlantTrait: UIFontDescriptor.TraitKey
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.ultraLight")
let UIFontWeightUltraLight: UIFont.Weight
extension UIFont.Weight {
  @available(iOS 8.2, *)
  static let ultraLight: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.ultraLight")
  static let UIFontWeightUltraLight: UIFont.Weight
  @available(iOS 8.2, *)
  static let thin: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.thin")
  static let UIFontWeightThin: UIFont.Weight
  @available(iOS 8.2, *)
  static let light: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.light")
  static let UIFontWeightLight: UIFont.Weight
  @available(iOS 8.2, *)
  static let regular: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.regular")
  static let UIFontWeightRegular: UIFont.Weight
  @available(iOS 8.2, *)
  static let medium: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.medium")
  static let UIFontWeightMedium: UIFont.Weight
  @available(iOS 8.2, *)
  static let semibold: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.semibold")
  static let UIFontWeightSemibold: UIFont.Weight
  @available(iOS 8.2, *)
  static let bold: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.bold")
  static let UIFontWeightBold: UIFont.Weight
  @available(iOS 8.2, *)
  static let heavy: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.heavy")
  static let UIFontWeightHeavy: UIFont.Weight
  @available(iOS 8.2, *)
  static let black: UIFont.Weight
  @available(iOS 8.2, *)
  @available(swift, obsoleted: 4, renamed: "UIFont.Weight.black")
  static let UIFontWeightBlack: UIFont.Weight
}
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.thin")
let UIFontWeightThin: UIFont.Weight
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.light")
let UIFontWeightLight: UIFont.Weight
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.regular")
let UIFontWeightRegular: UIFont.Weight
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.medium")
let UIFontWeightMedium: UIFont.Weight
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.semibold")
let UIFontWeightSemibold: UIFont.Weight
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.bold")
let UIFontWeightBold: UIFont.Weight
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.heavy")
let UIFontWeightHeavy: UIFont.Weight
@available(iOS 8.2, *)
@available(swift, obsoleted: 3, renamed: "UIFont.Weight.black")
let UIFontWeightBlack: UIFont.Weight
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.FeatureKey.featureIdentifier")
let UIFontFeatureTypeIdentifierKey: UIFontDescriptor.FeatureKey
extension UIFontDescriptor.FeatureKey {
  @available(iOS 7.0, *)
  static let featureIdentifier: UIFontDescriptor.FeatureKey
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.FeatureKey.featureIdentifier")
  static let UIFontFeatureTypeIdentifierKey: UIFontDescriptor.FeatureKey
  @available(iOS 7.0, *)
  static let typeIdentifier: UIFontDescriptor.FeatureKey
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 4, renamed: "UIFontDescriptor.FeatureKey.typeIdentifier")
  static let UIFontFeatureSelectorIdentifierKey: UIFontDescriptor.FeatureKey
}
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFontDescriptor.FeatureKey.typeIdentifier")
let UIFontFeatureSelectorIdentifierKey: UIFontDescriptor.FeatureKey
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.largeTitle")
let UIFontTextStyleLargeTitle: UIFont.TextStyle
extension UIFont.TextStyle {
  @available(iOS 11.0, *)
  static let largeTitle: UIFont.TextStyle
  @available(iOS 9.0, *)
  static let title1: UIFont.TextStyle
  @available(iOS 9.0, *)
  static let title2: UIFont.TextStyle
  @available(iOS 9.0, *)
  static let title3: UIFont.TextStyle
  @available(iOS 7.0, *)
  static let headline: UIFont.TextStyle
  @available(iOS 7.0, *)
  static let subheadline: UIFont.TextStyle
  @available(iOS 7.0, *)
  static let body: UIFont.TextStyle
  @available(iOS 9.0, *)
  static let callout: UIFont.TextStyle
  @available(iOS 7.0, *)
  static let footnote: UIFont.TextStyle
  @available(iOS 7.0, *)
  static let caption1: UIFont.TextStyle
  @available(iOS 7.0, *)
  static let caption2: UIFont.TextStyle
}
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.title1")
let UIFontTextStyleTitle1: UIFont.TextStyle
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.title2")
let UIFontTextStyleTitle2: UIFont.TextStyle
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.title3")
let UIFontTextStyleTitle3: UIFont.TextStyle
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.headline")
let UIFontTextStyleHeadline: UIFont.TextStyle
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.subheadline")
let UIFontTextStyleSubheadline: UIFont.TextStyle
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.body")
let UIFontTextStyleBody: UIFont.TextStyle
@available(iOS 9.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.callout")
let UIFontTextStyleCallout: UIFont.TextStyle
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.footnote")
let UIFontTextStyleFootnote: UIFont.TextStyle
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.caption1")
let UIFontTextStyleCaption1: UIFont.TextStyle
@available(iOS 7.0, *)
@available(swift, obsoleted: 3, renamed: "UIFont.TextStyle.caption2")
let UIFontTextStyleCaption2: UIFont.TextStyle
