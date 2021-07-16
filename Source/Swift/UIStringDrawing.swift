@_exported import Foundation

@available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, renamed: "NSAttributedString.Key.font", message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
let UITextAttributeFont: String
@available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, renamed: "NSAttributedString.Key.foregroundColor", message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
let UITextAttributeTextColor: String
@available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, message: "Use NSShadowAttributeName with an NSShadow instance as the value")
let UITextAttributeTextShadowColor: String
@available(iOS, unavailable, introduced: 5.0, deprecated: 7.0, message: "Use NSShadowAttributeName with an NSShadow instance as the value")
let UITextAttributeTextShadowOffset: String
@available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
enum UILineBreakMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case wordWrap
  @available(swift, obsoleted: 3, renamed: "wordWrap")
  static var WordWrap: UILineBreakMode { get }
  case characterWrap
  @available(swift, obsoleted: 3, renamed: "characterWrap")
  static var CharacterWrap: UILineBreakMode { get }
  case clip
  @available(swift, obsoleted: 3, renamed: "clip")
  static var Clip: UILineBreakMode { get }
  case headTruncation
  @available(swift, obsoleted: 3, renamed: "headTruncation")
  static var HeadTruncation: UILineBreakMode { get }
  case tailTruncation
  @available(swift, obsoleted: 3, renamed: "tailTruncation")
  static var TailTruncation: UILineBreakMode { get }
  case middleTruncation
  @available(swift, obsoleted: 3, renamed: "middleTruncation")
  static var MiddleTruncation: UILineBreakMode { get }
}
@available(iOS, unavailable, introduced: 2.0, deprecated: 6.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
enum UITextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case left
  @available(swift, obsoleted: 3, renamed: "left")
  static var Left: UITextAlignment { get }
  case center
  @available(swift, obsoleted: 3, renamed: "center")
  static var Center: UITextAlignment { get }
  case right
  @available(swift, obsoleted: 3, renamed: "right")
  static var Right: UITextAlignment { get }
}
enum UIBaselineAdjustment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case alignBaselines
  @available(swift, obsoleted: 3, renamed: "alignBaselines")
  static var AlignBaselines: UIBaselineAdjustment { get }
  case alignCenters
  @available(swift, obsoleted: 3, renamed: "alignCenters")
  static var AlignCenters: UIBaselineAdjustment { get }
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIBaselineAdjustment { get }
}
extension NSString {
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func size(with font: UIFont!) -> CGSize
  @available(swift, obsoleted: 3, renamed: "size(with:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func sizeWithFont(_ font: UIFont!) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func size(with font: UIFont!, forWidth width: CGFloat, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(swift, obsoleted: 3, renamed: "size(with:forWidth:lineBreakMode:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func sizeWithFont(_ font: UIFont!, forWidth width: CGFloat, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func draw(at point: CGPoint, with font: UIFont!) -> CGSize
  @available(swift, obsoleted: 3, renamed: "draw(at:with:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func drawAtPoint(_ point: CGPoint, withFont font: UIFont!) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func draw(at point: CGPoint, forWidth width: CGFloat, with font: UIFont!, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(swift, obsoleted: 3, renamed: "draw(at:forWidth:with:lineBreakMode:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func drawAtPoint(_ point: CGPoint, forWidth width: CGFloat, withFont font: UIFont!, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func size(with font: UIFont!, constrainedTo size: CGSize) -> CGSize
  @available(swift, obsoleted: 3, renamed: "size(with:constrainedTo:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func sizeWithFont(_ font: UIFont!, constrainedToSize size: CGSize) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func size(with font: UIFont!, constrainedTo size: CGSize, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(swift, obsoleted: 3, renamed: "size(with:constrainedTo:lineBreakMode:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func sizeWithFont(_ font: UIFont!, constrainedToSize size: CGSize, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func draw(in rect: CGRect, with font: UIFont!) -> CGSize
  @available(swift, obsoleted: 3, renamed: "draw(in:with:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func drawInRect(_ rect: CGRect, withFont font: UIFont!) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func draw(in rect: CGRect, with font: UIFont!, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(swift, obsoleted: 3, renamed: "draw(in:with:lineBreakMode:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func drawInRect(_ rect: CGRect, withFont font: UIFont!, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func draw(in rect: CGRect, with font: UIFont!, lineBreakMode: NSLineBreakMode, alignment: NSTextAlignment) -> CGSize
  @available(swift, obsoleted: 3, renamed: "draw(in:with:lineBreakMode:alignment:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func drawInRect(_ rect: CGRect, withFont font: UIFont!, lineBreakMode: NSLineBreakMode, alignment: NSTextAlignment) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func size(with font: UIFont!, minFontSize: CGFloat, actualFontSize: UnsafeMutablePointer<CGFloat>!, forWidth width: CGFloat, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(swift, obsoleted: 3, renamed: "size(with:minFontSize:actualFontSize:forWidth:lineBreakMode:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func sizeWithFont(_ font: UIFont!, minFontSize: CGFloat, actualFontSize: UnsafeMutablePointer<CGFloat>!, forWidth width: CGFloat, lineBreakMode: NSLineBreakMode) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func draw(at point: CGPoint, forWidth width: CGFloat, with font: UIFont!, fontSize: CGFloat, lineBreakMode: NSLineBreakMode, baselineAdjustment: UIBaselineAdjustment) -> CGSize
  @available(swift, obsoleted: 3, renamed: "draw(at:forWidth:with:fontSize:lineBreakMode:baselineAdjustment:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func drawAtPoint(_ point: CGPoint, forWidth width: CGFloat, withFont font: UIFont!, fontSize: CGFloat, lineBreakMode: NSLineBreakMode, baselineAdjustment: UIBaselineAdjustment) -> CGSize
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func draw(at point: CGPoint, forWidth width: CGFloat, with font: UIFont!, minFontSize: CGFloat, actualFontSize: UnsafeMutablePointer<CGFloat>!, lineBreakMode: NSLineBreakMode, baselineAdjustment: UIBaselineAdjustment) -> CGSize
  @available(swift, obsoleted: 3, renamed: "draw(at:forWidth:with:minFontSize:actualFontSize:lineBreakMode:baselineAdjustment:)")
  @available(iOS, unavailable, introduced: 2.0, deprecated: 7.0, message: "APIs deprecated as of iOS 7 and earlier are unavailable in Swift")
  func drawAtPoint(_ point: CGPoint, forWidth width: CGFloat, withFont font: UIFont!, minFontSize: CGFloat, actualFontSize: UnsafeMutablePointer<CGFloat>!, lineBreakMode: NSLineBreakMode, baselineAdjustment: UIBaselineAdjustment) -> CGSize
}
