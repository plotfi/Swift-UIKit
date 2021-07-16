@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIDocument.ChangeKind")
typealias UIDocumentChangeKind = UIDocument.ChangeKind
@available(swift, obsoleted: 4.2, renamed: "UIDocument.SaveOperation")
typealias UIDocumentSaveOperation = UIDocument.SaveOperation
@available(swift, obsoleted: 4.2, renamed: "UIDocument.State")
typealias UIDocumentState = UIDocument.State
@available(iOS 5.0, *)
@available(swift, obsoleted: 3, renamed: "UIDocument.stateChangedNotification")
let UIDocumentStateChangedNotification: NSNotification.Name
@available(iOS 5.0, *)
class UIDocument : NSObject, NSFilePresenter, ProgressReporting {
  init(fileURL url: URL)
  var fileURL: URL { get }
  var localizedName: String { get }
  var fileType: String? { get }
  var fileModificationDate: Date?
  var documentState: UIDocument.State { get }
  @available(iOS 9.0, *)
  var progress: Progress? { get }
  func open(completionHandler: ((Bool) -> Void)? = nil)
  func open() async -> Bool
  @available(swift, obsoleted: 3, renamed: "open(completionHandler:)")
  func openWithCompletionHandler(_ completionHandler: ((Bool) -> Void)? = nil)
  func close(completionHandler: ((Bool) -> Void)? = nil)
  func close() async -> Bool
  @available(swift, obsoleted: 3, renamed: "close(completionHandler:)")
  func closeWithCompletionHandler(_ completionHandler: ((Bool) -> Void)? = nil)
  func load(fromContents contents: Any, ofType typeName: String?) throws
  @available(swift, obsoleted: 3, renamed: "load(fromContents:ofType:)")
  func loadFromContents(_ contents: Any, ofType typeName: String?) throws
  func contents(forType typeName: String) throws -> Any
  @available(swift, obsoleted: 3, renamed: "contents(forType:)")
  func contentsForType(_ typeName: String) throws -> Any
  func disableEditing()
  func enableEditing()
  var undoManager: UndoManager!
  var hasUnsavedChanges: Bool { get }
  func updateChangeCount(_ change: UIDocument.ChangeKind)
  func changeCountToken(for saveOperation: UIDocument.SaveOperation) -> Any
  @available(swift, obsoleted: 3, renamed: "changeCountToken(for:)")
  func changeCountTokenForSaveOperation(_ saveOperation: UIDocument.SaveOperation) -> Any
  func updateChangeCount(withToken changeCountToken: Any, for saveOperation: UIDocument.SaveOperation)
  @available(swift, obsoleted: 3, renamed: "updateChangeCount(withToken:for:)")
  func updateChangeCountWithToken(_ changeCountToken: Any, forSaveOperation saveOperation: UIDocument.SaveOperation)
  func save(to url: URL, for saveOperation: UIDocument.SaveOperation, completionHandler: ((Bool) -> Void)? = nil)
  func save(to url: URL, for saveOperation: UIDocument.SaveOperation) async -> Bool
  @available(swift, obsoleted: 3, renamed: "save(to:for:completionHandler:)")
  func saveToURL(_ url: URL, forSaveOperation saveOperation: UIDocument.SaveOperation, completionHandler: ((Bool) -> Void)? = nil)
  func autosave(completionHandler: ((Bool) -> Void)? = nil)
  func autosave() async -> Bool
  @available(swift, obsoleted: 3, renamed: "autosave(completionHandler:)")
  func autosaveWithCompletionHandler(_ completionHandler: ((Bool) -> Void)? = nil)
  var savingFileType: String? { get }
  func fileNameExtension(forType typeName: String?, saveOperation: UIDocument.SaveOperation) -> String
  @available(swift, obsoleted: 3, renamed: "fileNameExtension(forType:saveOperation:)")
  func fileNameExtensionForType(_ typeName: String?, saveOperation: UIDocument.SaveOperation) -> String
  func writeContents(_ contents: Any, andAttributes additionalFileAttributes: [AnyHashable : Any]? = nil, safelyTo url: URL, for saveOperation: UIDocument.SaveOperation) throws
  @available(swift, obsoleted: 3, renamed: "writeContents(_:andAttributes:safelyTo:for:)")
  func writeContents(_ contents: Any, andAttributes additionalFileAttributes: [AnyHashable : Any]? = nil, safelyToURL url: URL, forSaveOperation saveOperation: UIDocument.SaveOperation) throws
  func writeContents(_ contents: Any, to url: URL, for saveOperation: UIDocument.SaveOperation, originalContentsURL: URL?) throws
  @available(swift, obsoleted: 3, renamed: "writeContents(_:to:for:originalContentsURL:)")
  func writeContents(_ contents: Any, toURL url: URL, forSaveOperation saveOperation: UIDocument.SaveOperation, originalContentsURL: URL?) throws
  func fileAttributesToWrite(to url: URL, for saveOperation: UIDocument.SaveOperation) throws -> [AnyHashable : Any]
  @available(swift, obsoleted: 3, renamed: "fileAttributesToWrite(to:for:)")
  func fileAttributesToWriteToURL(_ url: URL, forSaveOperation saveOperation: UIDocument.SaveOperation) throws -> [AnyHashable : Any]
  func read(from url: URL) throws
  @available(swift, obsoleted: 3, renamed: "read(from:)")
  func readFromURL(_ url: URL) throws
  func performAsynchronousFileAccess(_ block: @escaping () -> Void)
  @available(swift, obsoleted: 3, renamed: "performAsynchronousFileAccess(_:)")
  func performAsynchronousFileAccessUsingBlock(_ block: @escaping () -> Void)
  func handleError(_ error: Error, userInteractionPermitted: Bool)
  func finishedHandlingError(_ error: Error, recovered: Bool)
  func userInteractionNoLongerPermitted(forError error: Error)
  @available(swift, obsoleted: 3, renamed: "userInteractionNoLongerPermitted(forError:)")
  func userInteractionNoLongerPermittedForError(_ error: Error)
  func revert(toContentsOf url: URL, completionHandler: ((Bool) -> Void)? = nil)
  func revert(toContentsOf url: URL) async -> Bool
  @available(swift, obsoleted: 3, renamed: "revert(toContentsOf:completionHandler:)")
  func revertToContentsOfURL(_ url: URL, completionHandler: ((Bool) -> Void)? = nil)
  convenience init()
  @available(iOS 5.0, *)
  var presentedItemURL: URL? { get }
  @available(iOS 5.0, *)
  var presentedItemOperationQueue: OperationQueue { get }
  @available(iOS, unavailable)
  var primaryPresentedItemURL: URL? { get }
  @available(iOS 11.0, *)
  var observedPresentedItemUbiquityAttributes: Set<URLResourceKey> { get }
  @available(iOS 5.0, *)
  func relinquishPresentedItem(toReader reader: @escaping ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func relinquishPresentedItem(toWriter writer: @escaping ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func savePresentedItemChanges(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 5.0, *)
  func savePresentedItemChanges() async throws
  @available(iOS 5.0, *)
  func accommodatePresentedItemDeletion(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 5.0, *)
  func accommodatePresentedItemDeletion() async throws
  @available(iOS 5.0, *)
  func presentedItemDidMove(to newURL: URL)
  @available(iOS 5.0, *)
  func presentedItemDidChange()
  @available(iOS 11.0, *)
  func presentedItemDidChangeUbiquityAttributes(_ attributes: Set<URLResourceKey>)
  @available(iOS 5.0, *)
  func presentedItemDidGain(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidLose(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidResolveConflict(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  func accommodatePresentedSubitemDeletion(at url: URL, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 5.0, *)
  func accommodatePresentedSubitemDeletion(at url: URL) async throws
  @available(iOS 5.0, *)
  func presentedSubitemDidAppear(at url: URL)
  @available(iOS 5.0, *)
  func presentedSubitem(at oldURL: URL, didMoveTo newURL: URL)
  @available(iOS 5.0, *)
  func presentedSubitemDidChange(at url: URL)
  @available(iOS 5.0, *)
  func presentedSubitem(at url: URL, didGain version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitem(at url: URL, didLose version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitem(at url: URL, didResolve version: NSFileVersion)
}
@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIDocument.userActivityURLKey")
let NSUserActivityDocumentURLKey: String
extension UIDocument {
  @available(iOS 8.0, *)
  class let userActivityURLKey: String
  enum ChangeKind : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case done
    @available(swift, obsoleted: 3, renamed: "done")
    static var Done: UIDocument.ChangeKind { get }
    case undone
    @available(swift, obsoleted: 3, renamed: "undone")
    static var Undone: UIDocument.ChangeKind { get }
    case redone
    @available(swift, obsoleted: 3, renamed: "redone")
    static var Redone: UIDocument.ChangeKind { get }
    case cleared
    @available(swift, obsoleted: 3, renamed: "cleared")
    static var Cleared: UIDocument.ChangeKind { get }
  }
  enum SaveOperation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case forCreating
    @available(swift, obsoleted: 3, renamed: "forCreating")
    static var ForCreating: UIDocument.SaveOperation { get }
    case forOverwriting
    @available(swift, obsoleted: 3, renamed: "forOverwriting")
    static var ForOverwriting: UIDocument.SaveOperation { get }
  }
  struct State : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    typealias RawValue = UInt
    typealias Element = UIDocument.State
    typealias ArrayLiteralElement = UIDocument.State
    static var normal: UIDocument.State { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "normal")
    static var Normal: UIDocument.State { get }
    static var closed: UIDocument.State { get }
    @available(swift, obsoleted: 3, renamed: "closed")
    static var Closed: UIDocument.State { get }
    static var inConflict: UIDocument.State { get }
    @available(swift, obsoleted: 3, renamed: "inConflict")
    static var InConflict: UIDocument.State { get }
    static var savingError: UIDocument.State { get }
    @available(swift, obsoleted: 3, renamed: "savingError")
    static var SavingError: UIDocument.State { get }
    static var editingDisabled: UIDocument.State { get }
    @available(swift, obsoleted: 3, renamed: "editingDisabled")
    static var EditingDisabled: UIDocument.State { get }
    static var progressAvailable: UIDocument.State { get }
    @available(swift, obsoleted: 3, renamed: "progressAvailable")
    static var ProgressAvailable: UIDocument.State { get }
  }
  @available(iOS 5.0, *)
  class let stateChangedNotification: NSNotification.Name
}
extension UIDocument : UIUserActivityRestoring {
  @available(iOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(_ userActivity: NSUserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(_ userActivity: NSUserActivity)
}
