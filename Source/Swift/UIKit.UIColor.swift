@_exported import Foundation

@available(iOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  @available(*, unavailable, message: "superseded by import of -[UIColor initWithWhite:alpha:]")
  /*not inherited*/ init(white: CGFloat, alpha: CGFloat)
  @available(*, unavailable, renamed: "init(white:alpha:)", message: "Not available in Swift")
  class func colorWithWhite(_ white: CGFloat, alpha: CGFloat) -> UIColor
  @available(*, unavailable, message: "superseded by import of -[UIColor initWithHue:saturation:brightness:alpha:]")
  /*not inherited*/ init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  @available(*, unavailable, renamed: "init(hue:saturation:brightness:alpha:)", message: "Not available in Swift")
  class func colorWithHue(_ hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> UIColor
  @available(*, unavailable, message: "superseded by import of -[UIColor initWithRed:green:blue:alpha:]")
  /*not inherited*/ init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(*, unavailable, renamed: "init(red:green:blue:alpha:)", message: "Not available in Swift")
  class func colorWithRed(_ red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor
  @available(iOS 10.0, *)
  @available(*, unavailable, message: "superseded by import of -[UIColor initWithDisplayP3Red:green:blue:alpha:]")
  /*not inherited*/ init(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(iOS 10.0, *)
  @available(*, unavailable, renamed: "init(displayP3Red:green:blue:alpha:)", message: "Not available in Swift")
  class func colorWithDisplayP3Red(_ displayP3Red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor
  @available(*, unavailable, message: "superseded by import of -[UIColor initWithCGColor:]")
  /*not inherited*/ init(cgColor: CGColor)
  @available(swift, obsoleted: 3, renamed: "init(cgColor:)")
  /*not inherited*/ init(CGColor cgColor: CGColor)
  @available(*, unavailable, renamed: "init(cgColor:)", message: "Not available in Swift")
  class func colorWithCGColor(_ cgColor: CGColor) -> UIColor
  @available(*, unavailable, message: "superseded by import of -[UIColor initWithPatternImage:]")
  /*not inherited*/ init(patternImage image: UIImage)
  @available(*, unavailable, renamed: "init(patternImage:)", message: "Not available in Swift")
  class func colorWithPatternImage(_ image: UIImage) -> UIColor
  @available(iOS 5.0, *)
  @available(*, unavailable, message: "superseded by import of -[UIColor initWithCIColor:]")
  /*not inherited*/ init(ciColor: CIColor)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "init(ciColor:)")
  /*not inherited*/ init(CIColor ciColor: CIColor)
  @available(iOS 5.0, *)
  @available(*, unavailable, renamed: "init(ciColor:)", message: "Not available in Swift")
  class func colorWithCIColor(_ ciColor: CIColor) -> UIColor
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(iOS 10.0, *)
  init(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(cgColor: CGColor)
  @available(swift, obsoleted: 3, renamed: "init(cgColor:)")
  init(CGColor cgColor: CGColor)
  init(patternImage image: UIImage)
  @available(iOS 5.0, *)
  init(ciColor: CIColor)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "init(ciColor:)")
  init(CIColor ciColor: CIColor)
  class var black: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "black")
  class var blackColor: UIColor { get }
  class var darkGray: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "darkGray")
  class var darkGrayColor: UIColor { get }
  class var lightGray: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "lightGray")
  class var lightGrayColor: UIColor { get }
  class var white: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "white")
  class var whiteColor: UIColor { get }
  class var gray: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "gray")
  class var grayColor: UIColor { get }
  class var red: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "red")
  class var redColor: UIColor { get }
  class var green: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "green")
  class var greenColor: UIColor { get }
  class var blue: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "blue")
  class var blueColor: UIColor { get }
  class var cyan: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "cyan")
  class var cyanColor: UIColor { get }
  class var yellow: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "yellow")
  class var yellowColor: UIColor { get }
  class var magenta: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "magenta")
  class var magentaColor: UIColor { get }
  class var orange: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "orange")
  class var orangeColor: UIColor { get }
  class var purple: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "purple")
  class var purpleColor: UIColor { get }
  class var brown: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "brown")
  class var brownColor: UIColor { get }
  class var clear: UIColor { get }
  @available(swift, obsoleted: 3, renamed: "clear")
  class var clearColor: UIColor { get }
  func set()
  func setFill()
  func setStroke()
  @available(iOS 5.0, *)
  func getWhite(_ white: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool
  @available(iOS 5.0, *)
  func getHue(_ hue: UnsafeMutablePointer<CGFloat>?, saturation: UnsafeMutablePointer<CGFloat>?, brightness: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool
  @available(iOS 5.0, *)
  func getRed(_ red: UnsafeMutablePointer<CGFloat>?, green: UnsafeMutablePointer<CGFloat>?, blue: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool
  func withAlphaComponent(_ alpha: CGFloat) -> UIColor
  @available(swift, obsoleted: 3, renamed: "withAlphaComponent(_:)")
  func colorWithAlphaComponent(_ alpha: CGFloat) -> UIColor
  var cgColor: CGColor { get }
  @available(swift, obsoleted: 3, renamed: "cgColor")
  var CGColor: CGColor { get }
  @available(iOS 5.0, *)
  var ciColor: CIColor { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "ciColor")
  var CIColor: CIColor { get }
  init()
  @available(iOS 2.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 2.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
  @available(iOS 2.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}

extension UIColor : _ExpressibleByColorLiteral {
  @nonobjc required convenience init(_colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension UIColor : NSItemProviderReading, NSItemProviderWriting {
  @available(iOS 11.0, *)
  class var readableTypeIdentifiersForItemProvider: [String] { get }
  @available(iOS 11.0, *)
  class var writableTypeIdentifiersForItemProvider: [String] { get }
  @available(iOS 11.0, *)
  var writableTypeIdentifiersForItemProvider: [String] { get }
  @available(iOS 11.0, *)
  class func object(withItemProviderData data: Data, typeIdentifier: String) throws -> Self
  @available(iOS 11.0, *)
  class func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  @available(iOS 11.0, *)
  func itemProviderVisibilityForRepresentation(withTypeIdentifier typeIdentifier: String) -> NSItemProviderRepresentationVisibility
  @available(iOS 11.0, *)
  func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress?
}
extension CIColor {
  @available(iOS 5.0, *)
  convenience init(color: UIColor)
}
extension UIColor {
  @available(iOS 11.0, *)
  /*not inherited*/ init?(named name: String)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(named:)", message: "Not available in Swift")
  class func colorNamed(_ name: String) -> UIColor?
  @available(iOS 11.0, *)
  /*not inherited*/ init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "init(named:in:compatibleWith:)")
  /*not inherited*/ init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(named:in:compatibleWith:)", message: "Not available in Swift")
  class func colorNamed(_ name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?) -> UIColor?
}
extension UIColor {
  @available(iOS 13.0, *)
  @available(*, unavailable, message: "superseded by import of -[UIColor(DynamicColors) initWithDynamicProvider:]")
  /*not inherited*/ init(dynamicProvider: @escaping (UITraitCollection) -> UIColor)
  @available(iOS 13.0, *)
  @available(*, unavailable, renamed: "init(dynamicProvider:)", message: "Not available in Swift")
  class func colorWithDynamicProvider(_ dynamicProvider: @escaping (UITraitCollection) -> UIColor) -> UIColor
  @available(iOS 13.0, *)
  init(dynamicProvider: @escaping (UITraitCollection) -> UIColor)
  @available(iOS 13.0, *)
  func resolvedColor(with traitCollection: UITraitCollection) -> UIColor
  @available(iOS 13.0, *)
  @available(swift, obsoleted: 3, renamed: "resolvedColor(with:)")
  func resolvedColorWithTraitCollection(_ traitCollection: UITraitCollection) -> UIColor
}
