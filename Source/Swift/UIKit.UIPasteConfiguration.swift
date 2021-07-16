@_exported import Foundation

@available(iOS 11.0, *)
class UIPasteConfiguration : NSObject, NSSecureCoding, NSCopying {
  var acceptableTypeIdentifiers: [String]
  init()
  convenience init(acceptableTypeIdentifiers: [String])
  func addAcceptableTypeIdentifiers(_ acceptableTypeIdentifiers: [String])
  convenience init(forAccepting aClass: NSItemProviderReading.Type)
  @available(swift, obsoleted: 3, renamed: "init(forAccepting:)")
  convenience init(typeIdentifiersForAcceptingClass aClass: NSItemProviderReading.Type)
  func addTypeIdentifiers(forAccepting aClass: NSItemProviderReading.Type)
  @available(swift, obsoleted: 3, renamed: "addTypeIdentifiers(forAccepting:)")
  func addTypeIdentifiersForAcceptingClass(_ aClass: NSItemProviderReading.Type)
  @available(iOS 11.0, *)
  class var supportsSecureCoding: Bool { get }
  @available(iOS 11.0, *)
  func encode(with coder: NSCoder)
  init?(coder: NSCoder)
  @available(iOS 11.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}

@available(iOS 11.0, *)
extension UIPasteConfiguration {
  @available(iOS 11.0, *)
  convenience init<T>(forAccepting _: T.Type) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
  @available(iOS 11.0, *)
  func addTypeIdentifiers<T>(forAccepting aClass: T.Type) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}
