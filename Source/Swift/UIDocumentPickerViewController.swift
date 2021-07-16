@_exported import Foundation

protocol UIDocumentPickerDelegate : NSObjectProtocol {
  @available(iOS 11.0, *)
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL])
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "documentPicker(_:didPickDocumentsAt:)")
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAtURLs urls: [URL])
  @available(iOS 8.0, *)
  optional func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController)
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL)
  @available(swift, obsoleted: 3, renamed: "documentPicker(_:didPickDocumentAt:)")
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAtURL url: URL)
}
@available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use appropriate initializers instead")
enum UIDocumentPickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case `import`
  @available(swift, obsoleted: 3, renamed: "import")
  static var Import: UIDocumentPickerMode { get }
  case open
  @available(swift, obsoleted: 3, renamed: "open")
  static var Open: UIDocumentPickerMode { get }
  case exportToService
  @available(swift, obsoleted: 3, renamed: "exportToService")
  static var ExportToService: UIDocumentPickerMode { get }
  case moveToService
  @available(swift, obsoleted: 3, renamed: "moveToService")
  static var MoveToService: UIDocumentPickerMode { get }
}
@available(iOS 8.0, *)
class UIDocumentPickerViewController : UIViewController {
  @available(iOS, introduced: 8.0, deprecated: 14.0)
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  @available(swift, obsoleted: 3, renamed: "init(documentTypes:in:)")
  @available(iOS, introduced: 8.0, deprecated: 14.0)
  init(documentTypes allowedUTIs: [String], inMode mode: UIDocumentPickerMode)
  init?(coder: NSCoder)
  @available(iOS, introduced: 8.0, deprecated: 14.0)
  init(url: URL, in mode: UIDocumentPickerMode)
  @available(swift, obsoleted: 3, renamed: "init(url:in:)")
  @available(iOS, introduced: 8.0, deprecated: 14.0)
  init(URL url: URL, inMode mode: UIDocumentPickerMode)
  @available(iOS, introduced: 11.0, deprecated: 14.0)
  init(urls: [URL], in mode: UIDocumentPickerMode)
  @available(swift, obsoleted: 3, renamed: "init(urls:in:)")
  @available(iOS, introduced: 11.0, deprecated: 14.0)
  init(URLs urls: [URL], inMode mode: UIDocumentPickerMode)

  /// Initializes the picker for exporting local documents to an external location. The new locations will be returned using `didPickDocumentAtURLs:`.
  /// @param asCopy if true, a copy will be exported to the destination, otherwise the original document will be moved to the destination. For performance reasons and to avoid copies, we recommend you set `asCopy` to false.
  @available(iOS 14.0, *)
  init(forExporting urls: [URL], asCopy: Bool)

  /// Initializes the picker for exporting local documents to an external location. The new locations will be returned using `didPickDocumentAtURLs:`.
  /// @param asCopy if true, a copy will be exported to the destination, otherwise the original document will be moved to the destination. For performance reasons and to avoid copies, we recommend you set `asCopy` to false.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "init(forExporting:asCopy:)")
  init(forExportingURLs urls: [URL], asCopy: Bool)

  /// Initializes the picker for exporting local documents to an external location. The new locations will be returned using `didPickDocumentAtURLs:`. The original document will be moved to the destination.
  @available(iOS 14.0, *)
  convenience init(forExporting urls: [URL])

  /// Initializes the picker for exporting local documents to an external location. The new locations will be returned using `didPickDocumentAtURLs:`. The original document will be moved to the destination.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "init(forExporting:)")
  convenience init(forExportingURLs urls: [URL])
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  @available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use appropriate initializers instead")
  var documentPickerMode: UIDocumentPickerMode { get }
  @available(iOS 11.0, *)
  var allowsMultipleSelection: Bool

  /// Force the display of supported file extensions (default: NO).
  @available(iOS 13.0, *)
  var shouldShowFileExtensions: Bool

  /// Picker will try to display this URL when presented
  @available(iOS 13.0, *)
  var directoryURL: URL?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  convenience init()
}
