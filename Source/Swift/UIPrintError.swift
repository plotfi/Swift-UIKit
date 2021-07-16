@_exported import Foundation

let UIPrintErrorDomain: String
struct UIPrintError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  enum Code : Int, _ErrorCodeProtocol {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    typealias _ErrorType = UIPrintError
    case notAvailable
    @available(swift, obsoleted: 3, renamed: "notAvailable")
    static var UIPrintingNotAvailableError: UIPrintError.Code { get }
    case noContent
    @available(swift, obsoleted: 3, renamed: "noContent")
    static var UIPrintNoContentError: UIPrintError.Code { get }
    case unknownImageFormat
    @available(swift, obsoleted: 3, renamed: "unknownImageFormat")
    static var UIPrintUnknownImageFormatError: UIPrintError.Code { get }
    case jobFailed
    @available(swift, obsoleted: 3, renamed: "jobFailed")
    static var UIPrintJobFailedError: UIPrintError.Code { get }
  }
  static var notAvailable: UIPrintError.Code { get }
  static var noContent: UIPrintError.Code { get }
  static var unknownImageFormat: UIPrintError.Code { get }
  static var jobFailed: UIPrintError.Code { get }
}
