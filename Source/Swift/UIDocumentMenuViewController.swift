@_exported import Foundation

@available(iOS, introduced: 8.0, deprecated: 11.0)
enum UIDocumentMenuOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  typealias RawValue = UInt
  case first
  @available(swift, obsoleted: 3, renamed: "first")
  static var First: UIDocumentMenuOrder { get }
  case last
  @available(swift, obsoleted: 3, renamed: "last")
  static var Last: UIDocumentMenuOrder { get }
}
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "UIDocumentMenuDelegate is deprecated. Use UIDocumentPickerViewController directly.")
protocol UIDocumentMenuDelegate : NSObjectProtocol {
  func documentMenu(_ documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController)
  optional func documentMenuWasCancelled(_ documentMenu: UIDocumentMenuViewController)
}
@available(iOS, introduced: 8.0, deprecated: 11.0, message: "UIDocumentMenuViewController is deprecated. Use UIDocumentPickerViewController directly.")
class UIDocumentMenuViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  @available(swift, obsoleted: 3, renamed: "init(documentTypes:in:)")
  init(documentTypes allowedUTIs: [String], inMode mode: UIDocumentPickerMode)
  init(url: URL, in mode: UIDocumentPickerMode)
  @available(swift, obsoleted: 3, renamed: "init(url:in:)")
  init(URL url: URL, inMode mode: UIDocumentPickerMode)
  init?(coder: NSCoder)
  func addOption(withTitle title: String, image: UIImage?, order: UIDocumentMenuOrder, handler: @escaping () -> Void)
  @available(swift, obsoleted: 3, renamed: "addOption(withTitle:image:order:handler:)")
  func addOptionWithTitle(_ title: String, image: UIImage?, order: UIDocumentMenuOrder, handler: @escaping () -> Void)
  weak var delegate: @sil_weak UIDocumentMenuDelegate?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  convenience init()
}
