@_exported import Foundation

@available(iOS 5.0, *)
class UIManagedDocument : UIDocument {
  class var persistentStoreName: String { get }
  var persistentStoreOptions: [AnyHashable : Any]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinator(for storeURL: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [AnyHashable : Any]? = nil) throws
  @available(swift, obsoleted: 3, renamed: "configurePersistentStoreCoordinator(for:ofType:modelConfiguration:storeOptions:)")
  func configurePersistentStoreCoordinatorForURL(_ storeURL: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [AnyHashable : Any]? = nil) throws
  func persistentStoreType(forFileType fileType: String) -> String
  @available(swift, obsoleted: 3, renamed: "persistentStoreType(forFileType:)")
  func persistentStoreTypeForFileType(_ fileType: String) -> String
  func readAdditionalContent(from absoluteURL: URL) throws
  @available(swift, obsoleted: 3, renamed: "readAdditionalContent(from:)")
  func readAdditionalContentFromURL(_ absoluteURL: URL) throws
  func additionalContent(for absoluteURL: URL) throws -> Any
  @available(swift, obsoleted: 3, renamed: "additionalContent(for:)")
  func additionalContentForURL(_ absoluteURL: URL) throws -> Any
  func writeAdditionalContent(_ content: Any, to absoluteURL: URL, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  @available(swift, obsoleted: 3, renamed: "writeAdditionalContent(_:to:originalContentsURL:)")
  func writeAdditionalContent(_ content: Any, toURL absoluteURL: URL, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  init(fileURL url: URL)
  convenience init()
}
