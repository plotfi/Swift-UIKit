@_exported import Foundation

@available(iOS 13.0, *)
extension NSUserActivity : NSItemProviderReading, NSItemProviderWriting {
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
