@_exported import Foundation

struct UIEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}

extension UIEdgeInsets : Equatable {
  @_transparent static func == (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> Bool
}

extension UIEdgeInsets : Codable {
  init(from decoder: Decoder) throws
  func encode(to encoder: Encoder) throws
}

extension UIEdgeInsets : _ObjectiveCBridgeable {
  func _bridgeToObjectiveC() -> NSValue
  static func _forceBridgeFromObjectiveC(_ source: NSValue, result: inout UIEdgeInsets?)
  static func _conditionallyBridgeFromObjectiveC(_ source: NSValue, result: inout UIEdgeInsets?) -> Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: NSValue?) -> UIEdgeInsets
  typealias _ObjectiveCType = NSValue
}
@available(iOS 11.0, *)
struct NSDirectionalEdgeInsets {
  var top: CGFloat
  var leading: CGFloat
  var bottom: CGFloat
  var trailing: CGFloat
  init()
  init(top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat)
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Equatable {
  @_transparent static func == (lhs: NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) -> Bool
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Codable {
  init(from decoder: Decoder) throws
  func encode(to encoder: Encoder) throws
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : _ObjectiveCBridgeable {
  func _bridgeToObjectiveC() -> NSValue
  static func _forceBridgeFromObjectiveC(_ source: NSValue, result: inout NSDirectionalEdgeInsets?)
  static func _conditionallyBridgeFromObjectiveC(_ source: NSValue, result: inout NSDirectionalEdgeInsets?) -> Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: NSValue?) -> NSDirectionalEdgeInsets
  typealias _ObjectiveCType = NSValue
}
struct UIOffset {
  var horizontal: CGFloat
  var vertical: CGFloat
  init()
  init(horizontal: CGFloat, vertical: CGFloat)
}

extension UIOffset : Equatable {
  @_transparent static func == (lhs: UIOffset, rhs: UIOffset) -> Bool
}

extension UIOffset : Codable {
  init(from decoder: Decoder) throws
  func encode(to encoder: Encoder) throws
}

extension UIOffset : _ObjectiveCBridgeable {
  func _bridgeToObjectiveC() -> NSValue
  static func _forceBridgeFromObjectiveC(_ source: NSValue, result: inout UIOffset?)
  static func _conditionallyBridgeFromObjectiveC(_ source: NSValue, result: inout UIOffset?) -> Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: NSValue?) -> UIOffset
  typealias _ObjectiveCType = NSValue
}
@available(iOS 7.0, *)
struct UIRectEdge : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIRectEdge
  typealias ArrayLiteralElement = UIRectEdge
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: UIRectEdge { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIRectEdge { get }
  static var top: UIRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "top")
  static var Top: UIRectEdge { get }
  static var left: UIRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "left")
  static var Left: UIRectEdge { get }
  static var bottom: UIRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "bottom")
  static var Bottom: UIRectEdge { get }
  static var right: UIRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "right")
  static var Right: UIRectEdge { get }
  static var all: UIRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "all")
  static var All: UIRectEdge { get }
}
struct UIRectCorner : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIRectCorner
  typealias ArrayLiteralElement = UIRectCorner
  static var topLeft: UIRectCorner { get }
  @available(swift, obsoleted: 3, renamed: "topLeft")
  static var TopLeft: UIRectCorner { get }
  static var topRight: UIRectCorner { get }
  @available(swift, obsoleted: 3, renamed: "topRight")
  static var TopRight: UIRectCorner { get }
  static var bottomLeft: UIRectCorner { get }
  @available(swift, obsoleted: 3, renamed: "bottomLeft")
  static var BottomLeft: UIRectCorner { get }
  static var bottomRight: UIRectCorner { get }
  @available(swift, obsoleted: 3, renamed: "bottomRight")
  static var BottomRight: UIRectCorner { get }
  static var allCorners: UIRectCorner { get }
  @available(swift, obsoleted: 3, renamed: "allCorners")
  static var AllCorners: UIRectCorner { get }
}
@available(iOS 13.4, *)
struct UIAxis : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIAxis
  typealias ArrayLiteralElement = UIAxis
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var neither: UIAxis { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "neither")
  static var Neither: UIAxis { get }
  static var horizontal: UIAxis { get }
  @available(swift, obsoleted: 3, renamed: "horizontal")
  static var Horizontal: UIAxis { get }
  static var vertical: UIAxis { get }
  @available(swift, obsoleted: 3, renamed: "vertical")
  static var Vertical: UIAxis { get }
  static var both: UIAxis { get }
  @available(swift, obsoleted: 3, renamed: "both")
  static var Both: UIAxis { get }
}
@available(iOS 13.0, *)
struct NSDirectionalRectEdge : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = NSDirectionalRectEdge
  typealias ArrayLiteralElement = NSDirectionalRectEdge
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: NSDirectionalRectEdge { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: NSDirectionalRectEdge { get }
  static var top: NSDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "top")
  static var Top: NSDirectionalRectEdge { get }
  static var leading: NSDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "leading")
  static var Leading: NSDirectionalRectEdge { get }
  static var bottom: NSDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "bottom")
  static var Bottom: NSDirectionalRectEdge { get }
  static var trailing: NSDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "trailing")
  static var Trailing: NSDirectionalRectEdge { get }
  static var all: NSDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "all")
  static var All: NSDirectionalRectEdge { get }
}
@available(iOS, introduced: 13.0, deprecated: 13.0, renamed: "NSDirectionalRectEdge")
struct UIDirectionalRectEdge : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIDirectionalRectEdge
  typealias ArrayLiteralElement = UIDirectionalRectEdge
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: UIDirectionalRectEdge { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIDirectionalRectEdge { get }
  static var top: UIDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "top")
  static var Top: UIDirectionalRectEdge { get }
  static var leading: UIDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "leading")
  static var Leading: UIDirectionalRectEdge { get }
  static var bottom: UIDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "bottom")
  static var Bottom: UIDirectionalRectEdge { get }
  static var trailing: UIDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "trailing")
  static var Trailing: UIDirectionalRectEdge { get }
  static var all: UIDirectionalRectEdge { get }
  @available(swift, obsoleted: 3, renamed: "all")
  static var All: UIDirectionalRectEdge { get }
}
@available(iOS 13.0, *)
enum NSRectAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  typealias RawValue = Int
  case none
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: NSRectAlignment { get }
  case top
  @available(swift, obsoleted: 3, renamed: "top")
  static var Top: NSRectAlignment { get }
  case topLeading
  @available(swift, obsoleted: 3, renamed: "topLeading")
  static var TopLeading: NSRectAlignment { get }
  case leading
  @available(swift, obsoleted: 3, renamed: "leading")
  static var Leading: NSRectAlignment { get }
  case bottomLeading
  @available(swift, obsoleted: 3, renamed: "bottomLeading")
  static var BottomLeading: NSRectAlignment { get }
  case bottom
  @available(swift, obsoleted: 3, renamed: "bottom")
  static var Bottom: NSRectAlignment { get }
  case bottomTrailing
  @available(swift, obsoleted: 3, renamed: "bottomTrailing")
  static var BottomTrailing: NSRectAlignment { get }
  case trailing
  @available(swift, obsoleted: 3, renamed: "trailing")
  static var Trailing: NSRectAlignment { get }
  case topTrailing
  @available(swift, obsoleted: 3, renamed: "topTrailing")
  static var TopTrailing: NSRectAlignment { get }
}
@available(swift, obsoleted: 3, renamed: "UIEdgeInsets.init(top:left:bottom:right:)")
func UIEdgeInsetsMake(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> UIEdgeInsets
extension UIEdgeInsets {
  /*not inherited*/ init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
  static let zero: UIEdgeInsets
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSDirectionalEdgeInsets.init(top:leading:bottom:trailing:)")
func NSDirectionalEdgeInsetsMake(_ top: CGFloat, _ leading: CGFloat, _ bottom: CGFloat, _ trailing: CGFloat) -> NSDirectionalEdgeInsets
extension NSDirectionalEdgeInsets {
  @available(iOS 11.0, *)
  /*not inherited*/ init(top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat)
  @available(iOS 11.0, *)
  static let zero: NSDirectionalEdgeInsets
}
@available(swift, obsoleted: 3, renamed: "CGRect.inset(self:by:)")
func UIEdgeInsetsInsetRect(_ rect: CGRect, _ insets: UIEdgeInsets) -> CGRect
extension CGRect {
  func inset(by insets: UIEdgeInsets) -> CGRect
}
@available(swift, obsoleted: 3, renamed: "UIOffset.init(horizontal:vertical:)")
func UIOffsetMake(_ horizontal: CGFloat, _ vertical: CGFloat) -> UIOffset
extension UIOffset {
  /*not inherited*/ init(horizontal: CGFloat, vertical: CGFloat)
  static let zero: UIOffset
}
func __UIEdgeInsetsEqualToEdgeInsets(_ insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool
@available(iOS 11.0, *)
func __NSDirectionalEdgeInsetsEqualToDirectionalEdgeInsets(_ insets1: NSDirectionalEdgeInsets, _ insets2: NSDirectionalEdgeInsets) -> Bool
func __UIOffsetEqualToOffset(_ offset1: UIOffset, _ offset2: UIOffset) -> Bool
@available(swift, obsoleted: 3, renamed: "UIEdgeInsets.zero")
let UIEdgeInsetsZero: UIEdgeInsets
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSDirectionalEdgeInsets.zero")
let NSDirectionalEdgeInsetsZero: NSDirectionalEdgeInsets
@available(swift, obsoleted: 3, renamed: "UIOffset.zero")
let UIOffsetZero: UIOffset
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromCGPoint(_ point: CGPoint) -> String
extension NSCoder {
  class func string(for point: CGPoint) -> String
  class func string(for vector: CGVector) -> String
  class func string(for size: CGSize) -> String
  class func string(for rect: CGRect) -> String
  class func string(for transform: CGAffineTransform) -> String
  class func string(for insets: UIEdgeInsets) -> String
  @available(iOS 11.0, *)
  class func string(for insets: NSDirectionalEdgeInsets) -> String
  class func string(for offset: UIOffset) -> String
  class func cgPoint(for string: String) -> CGPoint
  class func cgVector(for string: String) -> CGVector
  class func cgSize(for string: String) -> CGSize
  class func cgRect(for string: String) -> CGRect
  class func cgAffineTransform(for string: String) -> CGAffineTransform
  class func uiEdgeInsets(for string: String) -> UIEdgeInsets
  @available(iOS 11.0, *)
  class func nsDirectionalEdgeInsets(for string: String) -> NSDirectionalEdgeInsets
  class func uiOffset(for string: String) -> UIOffset
}
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromCGVector(_ vector: CGVector) -> String
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromCGSize(_ size: CGSize) -> String
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromCGRect(_ rect: CGRect) -> String
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromCGAffineTransform(_ transform: CGAffineTransform) -> String
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromUIEdgeInsets(_ insets: UIEdgeInsets) -> String
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromDirectionalEdgeInsets(_ insets: NSDirectionalEdgeInsets) -> String
@available(swift, obsoleted: 3, renamed: "NSCoder.string(for:)")
func NSStringFromUIOffset(_ offset: UIOffset) -> String
@available(swift, obsoleted: 3, renamed: "NSCoder.cgPoint(for:)")
func CGPointFromString(_ string: String) -> CGPoint
@available(swift, obsoleted: 3, renamed: "NSCoder.cgVector(for:)")
func CGVectorFromString(_ string: String) -> CGVector
@available(swift, obsoleted: 3, renamed: "NSCoder.cgSize(for:)")
func CGSizeFromString(_ string: String) -> CGSize
@available(swift, obsoleted: 3, renamed: "NSCoder.cgRect(for:)")
func CGRectFromString(_ string: String) -> CGRect
@available(swift, obsoleted: 3, renamed: "NSCoder.cgAffineTransform(for:)")
func CGAffineTransformFromString(_ string: String) -> CGAffineTransform
@available(swift, obsoleted: 3, renamed: "NSCoder.uiEdgeInsets(for:)")
func UIEdgeInsetsFromString(_ string: String) -> UIEdgeInsets
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "NSCoder.nsDirectionalEdgeInsets(for:)")
func NSDirectionalEdgeInsetsFromString(_ string: String) -> NSDirectionalEdgeInsets
@available(swift, obsoleted: 3, renamed: "NSCoder.uiOffset(for:)")
func UIOffsetFromString(_ string: String) -> UIOffset
extension NSValue {
  /*not inherited*/ init(cgPoint point: CGPoint)
  @available(swift, obsoleted: 3, renamed: "init(cgPoint:)")
  /*not inherited*/ init(CGPoint point: CGPoint)
  @available(*, unavailable, renamed: "init(cgPoint:)", message: "Not available in Swift")
  class func valueWithCGPoint(_ point: CGPoint) -> NSValue
  /*not inherited*/ init(cgVector vector: CGVector)
  @available(swift, obsoleted: 3, renamed: "init(cgVector:)")
  /*not inherited*/ init(CGVector vector: CGVector)
  @available(*, unavailable, renamed: "init(cgVector:)", message: "Not available in Swift")
  class func valueWithCGVector(_ vector: CGVector) -> NSValue
  /*not inherited*/ init(cgSize size: CGSize)
  @available(swift, obsoleted: 3, renamed: "init(cgSize:)")
  /*not inherited*/ init(CGSize size: CGSize)
  @available(*, unavailable, renamed: "init(cgSize:)", message: "Not available in Swift")
  class func valueWithCGSize(_ size: CGSize) -> NSValue
  /*not inherited*/ init(cgRect rect: CGRect)
  @available(swift, obsoleted: 3, renamed: "init(cgRect:)")
  /*not inherited*/ init(CGRect rect: CGRect)
  @available(*, unavailable, renamed: "init(cgRect:)", message: "Not available in Swift")
  class func valueWithCGRect(_ rect: CGRect) -> NSValue
  /*not inherited*/ init(cgAffineTransform transform: CGAffineTransform)
  @available(swift, obsoleted: 3, renamed: "init(cgAffineTransform:)")
  /*not inherited*/ init(CGAffineTransform transform: CGAffineTransform)
  @available(*, unavailable, renamed: "init(cgAffineTransform:)", message: "Not available in Swift")
  class func valueWithCGAffineTransform(_ transform: CGAffineTransform) -> NSValue
  /*not inherited*/ init(uiEdgeInsets insets: UIEdgeInsets)
  @available(swift, obsoleted: 3, renamed: "init(uiEdgeInsets:)")
  /*not inherited*/ init(UIEdgeInsets insets: UIEdgeInsets)
  @available(*, unavailable, renamed: "init(uiEdgeInsets:)", message: "Not available in Swift")
  class func valueWithUIEdgeInsets(_ insets: UIEdgeInsets) -> NSValue
  @available(iOS 11.0, *)
  /*not inherited*/ init(directionalEdgeInsets insets: NSDirectionalEdgeInsets)
  @available(iOS 11.0, *)
  @available(*, unavailable, renamed: "init(directionalEdgeInsets:)", message: "Not available in Swift")
  class func valueWithDirectionalEdgeInsets(_ insets: NSDirectionalEdgeInsets) -> NSValue
  @available(iOS 5.0, *)
  /*not inherited*/ init(uiOffset insets: UIOffset)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "init(uiOffset:)")
  /*not inherited*/ init(UIOffset insets: UIOffset)
  @available(iOS 5.0, *)
  @available(*, unavailable, renamed: "init(uiOffset:)", message: "Not available in Swift")
  class func valueWithUIOffset(_ insets: UIOffset) -> NSValue
  var cgPointValue: CGPoint { get }
  @available(swift, obsoleted: 3, renamed: "cgPointValue")
  var CGPointValue: CGPoint { get }
  var cgVectorValue: CGVector { get }
  @available(swift, obsoleted: 3, renamed: "cgVectorValue")
  var CGVectorValue: CGVector { get }
  var cgSizeValue: CGSize { get }
  @available(swift, obsoleted: 3, renamed: "cgSizeValue")
  var CGSizeValue: CGSize { get }
  var cgRectValue: CGRect { get }
  @available(swift, obsoleted: 3, renamed: "cgRectValue")
  var CGRectValue: CGRect { get }
  var cgAffineTransformValue: CGAffineTransform { get }
  @available(swift, obsoleted: 3, renamed: "cgAffineTransformValue")
  var CGAffineTransformValue: CGAffineTransform { get }
  var uiEdgeInsetsValue: UIEdgeInsets { get }
  @available(swift, obsoleted: 3, renamed: "uiEdgeInsetsValue")
  var UIEdgeInsetsValue: UIEdgeInsets { get }
  @available(iOS 11.0, *)
  var directionalEdgeInsetsValue: NSDirectionalEdgeInsets { get }
  @available(iOS 5.0, *)
  var uiOffsetValue: UIOffset { get }
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "uiOffsetValue")
  var UIOffsetValue: UIOffset { get }
}
extension NSCoder {
  func encode(_ point: CGPoint, forKey key: String)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeCGPoint(_ point: CGPoint, forKey key: String)
  func encode(_ vector: CGVector, forKey key: String)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeCGVector(_ vector: CGVector, forKey key: String)
  func encode(_ size: CGSize, forKey key: String)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeCGSize(_ size: CGSize, forKey key: String)
  func encode(_ rect: CGRect, forKey key: String)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeCGRect(_ rect: CGRect, forKey key: String)
  func encode(_ transform: CGAffineTransform, forKey key: String)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeCGAffineTransform(_ transform: CGAffineTransform, forKey key: String)
  func encode(_ insets: UIEdgeInsets, forKey key: String)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeUIEdgeInsets(_ insets: UIEdgeInsets, forKey key: String)
  @available(iOS 11.0, *)
  func encode(_ insets: NSDirectionalEdgeInsets, forKey key: String)
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeDirectionalEdgeInsets(_ insets: NSDirectionalEdgeInsets, forKey key: String)
  @available(iOS 5.0, *)
  func encode(_ offset: UIOffset, forKey key: String)
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "encode(_:forKey:)")
  func encodeUIOffset(_ offset: UIOffset, forKey key: String)
  func decodeCGPoint(forKey key: String) -> CGPoint
  @available(swift, obsoleted: 3, renamed: "decodeCGPoint(forKey:)")
  func decodeCGPointForKey(_ key: String) -> CGPoint
  func decodeCGVector(forKey key: String) -> CGVector
  @available(swift, obsoleted: 3, renamed: "decodeCGVector(forKey:)")
  func decodeCGVectorForKey(_ key: String) -> CGVector
  func decodeCGSize(forKey key: String) -> CGSize
  @available(swift, obsoleted: 3, renamed: "decodeCGSize(forKey:)")
  func decodeCGSizeForKey(_ key: String) -> CGSize
  func decodeCGRect(forKey key: String) -> CGRect
  @available(swift, obsoleted: 3, renamed: "decodeCGRect(forKey:)")
  func decodeCGRectForKey(_ key: String) -> CGRect
  func decodeCGAffineTransform(forKey key: String) -> CGAffineTransform
  @available(swift, obsoleted: 3, renamed: "decodeCGAffineTransform(forKey:)")
  func decodeCGAffineTransformForKey(_ key: String) -> CGAffineTransform
  func decodeUIEdgeInsets(forKey key: String) -> UIEdgeInsets
  @available(swift, obsoleted: 3, renamed: "decodeUIEdgeInsets(forKey:)")
  func decodeUIEdgeInsetsForKey(_ key: String) -> UIEdgeInsets
  @available(iOS 11.0, *)
  func decodeDirectionalEdgeInsets(forKey key: String) -> NSDirectionalEdgeInsets
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "decodeDirectionalEdgeInsets(forKey:)")
  func decodeDirectionalEdgeInsetsForKey(_ key: String) -> NSDirectionalEdgeInsets
  @available(iOS 5.0, *)
  func decodeUIOffset(forKey key: String) -> UIOffset
  @available(iOS 5.0, *)
  @available(swift, obsoleted: 3, renamed: "decodeUIOffset(forKey:)")
  func decodeUIOffsetForKey(_ key: String) -> UIOffset
}
