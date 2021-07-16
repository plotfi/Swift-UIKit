@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIPrintInfo.OutputType")
typealias UIPrintInfoOutputType = UIPrintInfo.OutputType
extension UIPrintInfo {
  enum OutputType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case general
    @available(swift, obsoleted: 3, renamed: "general")
    static var General: UIPrintInfo.OutputType { get }
    case photo
    @available(swift, obsoleted: 3, renamed: "photo")
    static var Photo: UIPrintInfo.OutputType { get }
    case grayscale
    @available(swift, obsoleted: 3, renamed: "grayscale")
    static var Grayscale: UIPrintInfo.OutputType { get }
    @available(iOS 7.0, *)
    case photoGrayscale
    @available(iOS 7.0, *)
    @available(swift, obsoleted: 3, renamed: "photoGrayscale")
    static var PhotoGrayscale: UIPrintInfo.OutputType { get }
  }
  enum Orientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case portrait
    @available(swift, obsoleted: 3, renamed: "portrait")
    static var Portrait: UIPrintInfo.Orientation { get }
    case landscape
    @available(swift, obsoleted: 3, renamed: "landscape")
    static var Landscape: UIPrintInfo.Orientation { get }
  }
  enum Duplex : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIPrintInfo.Duplex { get }
    case longEdge
    @available(swift, obsoleted: 3, renamed: "longEdge")
    static var LongEdge: UIPrintInfo.Duplex { get }
    case shortEdge
    @available(swift, obsoleted: 3, renamed: "shortEdge")
    static var ShortEdge: UIPrintInfo.Duplex { get }
  }
}
@available(swift, obsoleted: 4.2, renamed: "UIPrintInfo.Orientation")
typealias UIPrintInfoOrientation = UIPrintInfo.Orientation
@available(swift, obsoleted: 4.2, renamed: "UIPrintInfo.Duplex")
typealias UIPrintInfoDuplex = UIPrintInfo.Duplex
@available(iOS 4.2, *)
class UIPrintInfo : NSObject, NSCopying, NSCoding {
  init?(coder: NSCoder)
  class func printInfo() -> UIPrintInfo
  @available(swift, obsoleted: 3, renamed: "printInfo()")
  /*not inherited*/ init()
  /*not inherited*/ init(dictionary: [AnyHashable : Any]?)
  @available(*, unavailable, renamed: "init(dictionary:)", message: "Not available in Swift")
  class func printInfoWithDictionary(_ dictionary: [AnyHashable : Any]?) -> UIPrintInfo
  var printerID: String?
  var jobName: String
  var outputType: UIPrintInfo.OutputType
  var orientation: UIPrintInfo.Orientation
  var duplex: UIPrintInfo.Duplex
  var dictionaryRepresentation: [AnyHashable : Any] { get }
  convenience init()
  @available(iOS 4.2, *)
  func copy(with zone: NSZone? = nil) -> Any
  @available(iOS 4.2, *)
  func encode(with coder: NSCoder)
}
