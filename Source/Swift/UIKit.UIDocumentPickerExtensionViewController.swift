@_exported import Foundation

@available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use enumeration based NSFileProviderExtension instead")
class UIDocumentPickerExtensionViewController : UIViewController {
  func dismissGrantingAccess(to url: URL?)
  @available(swift, obsoleted: 3, renamed: "dismissGrantingAccess(to:)")
  func dismissGrantingAccessToURL(_ url: URL?)
  func prepareForPresentation(in mode: UIDocumentPickerMode)
  @available(swift, obsoleted: 3, renamed: "prepareForPresentation(in:)")
  func prepareForPresentationInMode(_ mode: UIDocumentPickerMode)
  var documentPickerMode: UIDocumentPickerMode { get }
  var originalURL: URL? { get }
  var validTypes: [String]? { get }
  var providerIdentifier: String { get }
  var documentStorageURL: URL? { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: NSCoder)
  convenience init()
}
