@_exported import Foundation

@available(iOS 14.5, *)
class UIPrinterDestination : NSObject, NSSecureCoding {
  init(url: URL)
  @available(swift, obsoleted: 3, renamed: "init(url:)")
  init(URL url: URL)
  var url: URL
  @available(swift, obsoleted: 3, renamed: "url")
  var URL: URL
  var displayName: String?
  var txtRecord: Data?
  init()
  @available(iOS 14.5, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 14.5, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
}
@available(iOS 14.5, *)
class UIPrintServiceExtension : NSObject {
  func printerDestinations(for printInfo: UIPrintInfo) -> [UIPrinterDestination]
  @available(swift, obsoleted: 3, renamed: "printerDestinations(for:)")
  func printerDestinationsForPrintInfo(_ printInfo: UIPrintInfo) -> [UIPrinterDestination]
  init()
}
