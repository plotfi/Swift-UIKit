@_exported import Foundation

@available(iOS 11.0, *)
let UIDocumentBrowserErrorDomain: String
@available(iOS 11.0, *)
struct UIDocumentBrowserError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(iOS 11.0, *)
  enum Code : Int, _ErrorCodeProtocol {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    typealias _ErrorType = UIDocumentBrowserError
    case generic
    @available(swift, obsoleted: 3, renamed: "generic")
    static var Generic: UIDocumentBrowserError.Code { get }
    @available(iOS 12.0, *)
    case noLocationAvailable
    @available(iOS 12.0, *)
    @available(swift, obsoleted: 3, renamed: "noLocationAvailable")
    static var NoLocationAvailable: UIDocumentBrowserError.Code { get }
  }
  static var generic: UIDocumentBrowserError.Code { get }
  @available(iOS 12.0, *)
  static var noLocationAvailable: UIDocumentBrowserError.Code { get }
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIDocumentBrowserViewController.ImportMode")
typealias UIDocumentBrowserImportMode = UIDocumentBrowserViewController.ImportMode
extension UIDocumentBrowserViewController {
  @available(iOS 11.0, *)
  enum ImportMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case none
    @available(swift, obsoleted: 3, renamed: "none")
    static var None: UIDocumentBrowserViewController.ImportMode { get }
    case copy
    @available(swift, obsoleted: 3, renamed: "copy")
    static var Copy: UIDocumentBrowserViewController.ImportMode { get }
    case move
    @available(swift, obsoleted: 3, renamed: "move")
    static var Move: UIDocumentBrowserViewController.ImportMode { get }
  }
  @available(iOS 11.0, *)
  enum BrowserUserInterfaceStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    typealias RawValue = UInt
    case white
    @available(swift, obsoleted: 3, renamed: "white")
    static var White: UIDocumentBrowserViewController.BrowserUserInterfaceStyle { get }
    case light
    @available(swift, obsoleted: 3, renamed: "light")
    static var Light: UIDocumentBrowserViewController.BrowserUserInterfaceStyle { get }
    case dark
    @available(swift, obsoleted: 3, renamed: "dark")
    static var Dark: UIDocumentBrowserViewController.BrowserUserInterfaceStyle { get }
  }
}
@available(iOS 11.0, *)
@available(swift, obsoleted: 3, renamed: "UIDocumentBrowserViewController.BrowserUserInterfaceStyle")
typealias UIDocumentBrowserUserInterfaceStyle = UIDocumentBrowserViewController.BrowserUserInterfaceStyle

/// UIDocumentBrowserViewController is a view controller to browse the files on the user's device or cloud services and open them directly in your application
@available(iOS 11.0, *)
class UIDocumentBrowserViewController : UIViewController, NSCoding {

  /// @param allowedContentTypes  The document types that the user should be able to open. If nil, the types specified via the CFBundleDocumentTypes key in the application plist will be used instead.
  @available(iOS, introduced: 11.0, deprecated: 14.0)
  init(forOpeningFilesWithContentTypes allowedContentTypes: [String]?)

  /// Please use the designated initializers above instead.
  @available(*, unavailable)
  convenience init(nibName: String?, bundle: Bundle?)
  weak var delegate: @sil_weak UIDocumentBrowserViewControllerDelegate?

  /// Defaults to YES
  var allowsDocumentCreation: Bool

  /// Defaults to NO
  var allowsPickingMultipleItems: Bool
  @available(iOS, introduced: 11.0, deprecated: 14.0, message: "allowedContentTypes is no longer supported")
  var allowedContentTypes: [String] { get }

  /// Array of content types supported for Recents documents.
  /// Default is same as allowedContentTypes.
  /// Can be defined via the 'UIDocumentBrowserRecentDocumentContentTypes' key in the app Info.plist.
  /// Note that the recentDocumentsContentTypes must be a subset conforming to the types declared in allowedContentTypes.
  @available(iOS, introduced: 11.0, deprecated: 14.0)
  var recentDocumentsContentTypes: [String] { get }

  /// Force the display of file extensions (default: NO).
  @available(iOS 13.0, *)
  var shouldShowFileExtensions: Bool

  /// An array of buttons that will be added to the existing buttons in the UIDocumentBrowserViewController navigation bar
  var additionalLeadingNavigationBarButtonItems: [UIBarButtonItem]

  /// An array of buttons that will be added to the existing buttons in the UIDocumentBrowserViewController navigation bar
  var additionalTrailingNavigationBarButtonItems: [UIBarButtonItem]

  /// Called to reveal a document at the URL.
  /// Typically called from the application delegate method application:openURL:options:; to let the application present the document.
  func revealDocument(at url: URL, importIfNeeded: Bool, completion: ((URL?, Error?) -> Void)? = nil)

  /// Called to reveal a document at the URL.
  /// Typically called from the application delegate method application:openURL:options:; to let the application present the document.
  func revealDocument(at url: URL, importIfNeeded: Bool) async throws -> URL

  /// Called to reveal a document at the URL.
  /// Typically called from the application delegate method application:openURL:options:; to let the application present the document.
  @available(swift, obsoleted: 3, renamed: "revealDocument(at:importIfNeeded:completion:)")
  func revealDocumentAtURL(_ url: URL, importIfNeeded: Bool, completion: ((URL?, Error?) -> Void)? = nil)

  /// Allow a document to be imported next to another document.
  func importDocument(at documentURL: URL, nextToDocumentAt neighbourURL: URL, mode importMode: UIDocumentBrowserViewController.ImportMode, completionHandler completion: @escaping (URL?, Error?) -> Void)

  /// Allow a document to be imported next to another document.
  func importDocument(at documentURL: URL, nextToDocumentAt neighbourURL: URL, mode importMode: UIDocumentBrowserViewController.ImportMode) async throws -> URL

  /// Allow a document to be imported next to another document.
  @available(swift, obsoleted: 3, renamed: "importDocument(at:nextToDocumentAt:mode:completionHandler:)")
  func importDocumentAtURL(_ documentURL: URL, nextToDocumentAtURL neighbourURL: URL, mode importMode: UIDocumentBrowserViewController.ImportMode, completionHandler completion: @escaping (URL?, Error?) -> Void)

  /// A UIDocumentBrowserTransitionController object is used to display a loading indicator, while the application is spending time on time-consuming operations (e.g., loading, parsing, …) after having finished the file download, and before presenting it. To be used together with the UIViewControllerTransitioningDelegate protocol for custom view controller transitions.
  @available(iOS 12.0, *)
  func transitionController(forDocumentAt documentURL: URL) -> UIDocumentBrowserTransitionController

  /// A UIDocumentBrowserTransitionController object is used to display a loading indicator, while the application is spending time on time-consuming operations (e.g., loading, parsing, …) after having finished the file download, and before presenting it. To be used together with the UIViewControllerTransitioningDelegate protocol for custom view controller transitions.
  @available(iOS 12.0, *)
  @available(swift, obsoleted: 3, renamed: "transitionController(forDocumentAt:)")
  func transitionControllerForDocumentAtURL(_ documentURL: URL) -> UIDocumentBrowserTransitionController
  @available(iOS, introduced: 11.0, deprecated: 12.0)
  func transitionController(forDocumentURL documentURL: URL) -> UIDocumentBrowserTransitionController
  @available(swift, obsoleted: 3, renamed: "transitionController(forDocumentURL:)")
  @available(iOS, introduced: 11.0, deprecated: 12.0)
  func transitionControllerForDocumentURL(_ documentURL: URL) -> UIDocumentBrowserTransitionController

  /// Allows clients to add custom actions in the menu and the navigation bar. These actions are contextual to the document items.
  var customActions: [UIDocumentBrowserAction]

  /// Allows clients to customize the look of the browser. Default: UIDocumentBrowserUserInterfaceStyleWhite
  var browserUserInterfaceStyle: UIDocumentBrowserViewController.BrowserUserInterfaceStyle

  /// Title of the Create Document button (default: "Create Document”).
  @available(iOS 13.0, *)
  var localizedCreateDocumentActionTitle: String

  /// Aspect ratio of the Create Document button defined as width / height (default: 2/3).
  @available(iOS 13.0, *)
  var defaultDocumentAspectRatio: CGFloat
  init?(coder: NSCoder)
  convenience init()
}
@available(iOS 11.0, *)
protocol UIDocumentBrowserViewControllerDelegate : NSObjectProtocol {

  /// Called when the user validates a selection of items to open or pick.
  /// If you have created this document manager to open files, you should then open the document, potentially using a @c UIDocumentBrowserTransitionController for the transition.
  @available(iOS, introduced: 11.0, deprecated: 12.0)
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didPickDocumentURLs documentURLs: [URL])
  @available(iOS 12.0, *)
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didPickDocumentsAt documentURLs: [URL])
  @available(iOS 12.0, *)
  @available(swift, obsoleted: 3, renamed: "documentBrowser(_:didPickDocumentsAt:)")
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didPickDocumentsAtURLs documentURLs: [URL])

  /// When the user requests the creation of a new document, this method will be called. The application can then, optionally, present UI
  /// it deems appropriate to let the user configure the new document (for example, it could show a list of templates).
  /// When done, create an empty document or a copy of your template to a temporary location.
  /// Then use the importHandler to pass the document URL to be imported.
  /// If the user cancels the document creation, it's still expetected to call importHandler(nil, UIDocumentBrowserImportModeNone).
  /// The Document Browser will asynchronously move the document to its final destination and call back one of the following delegate methods:
  /// -documentBrowser:didImportDocumentURL:toDestinationURL:
  /// -documentBrowser:failedToImportDocumentAtURL:error:
  /// The app should wait for the delegate callbacks before presenting the imported document at the destination URL. Usage of UIDocument is recommended.
  /// If you do not implement this method, document creation will not be available.
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didRequestDocumentCreationWithHandler importHandler: @escaping (URL?, UIDocumentBrowserViewController.ImportMode) -> Void)
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didImportDocumentAt sourceURL: URL, toDestinationURL destinationURL: URL)
  @available(swift, obsoleted: 3, renamed: "documentBrowser(_:didImportDocumentAt:toDestinationURL:)")
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, didImportDocumentAtURL sourceURL: URL, toDestinationURL destinationURL: URL)
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, failedToImportDocumentAt documentURL: URL, error: Error?)
  @available(swift, obsoleted: 3, renamed: "documentBrowser(_:failedToImportDocumentAt:error:)")
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, failedToImportDocumentAtURL documentURL: URL, error: Error?)

  /// Allows clients to add application specific UIActivity instances
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, applicationActivitiesForDocumentURLs documentURLs: [URL]) -> [UIActivity]

  /// Implement this to customize the UIActivityViewController before it's presented.
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, willPresent activityViewController: UIActivityViewController)

  /// Implement this to customize the UIActivityViewController before it's presented.
  @available(swift, obsoleted: 3, renamed: "documentBrowser(_:willPresent:)")
  optional func documentBrowser(_ controller: UIDocumentBrowserViewController, willPresentActivityViewController activityViewController: UIActivityViewController)
}

/// Class to handle the loading and animation transition when opening or closing a document.
/// @discussion You can use this object to display a loading indicator if you need time to perform time-consuming operations (loading, parsing, …) after the document download and before presenting it. You can also get a transition controller to pass to UIKit when pushing or presenting your document view
/// in response to @c documentBrowser:didPickItem:, or when popping or dismissing it.
@available(iOS 11.0, *)
class UIDocumentBrowserTransitionController : NSObject, UIViewControllerAnimatedTransitioning {
  @available(*, unavailable)
  init()

  /// An optional progress can be displayed on the document thumbnail while the document is loading (during opening).
  var loadingProgress: Progress?

  /// This view will be used for the zoom transition from/to the document collection view.
  /// If UIDocumentBrowserViewController is being dismissed, this view should be a subview of the presented view controller's view
  /// If UIDocumentBrowserViewController is being presented, this view should be a subview of the presenting view controller's view
  weak var targetView: @sil_weak UIView?
  @available(iOS 11.0, *)
  func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  @available(iOS 11.0, *)
  func animateTransition(using transitionContext: UIViewControllerContextTransitioning)

  /// A conforming object implements this method if the transition it creates can
  /// be interrupted. For example, it could return an instance of a
  /// UIViewPropertyAnimator. It is expected that this method will return the same
  /// instance for the life of a transition.
  @available(iOS 10.0, *)
  func interruptibleAnimator(using transitionContext: UIViewControllerContextTransitioning) -> UIViewImplicitlyAnimating
  @available(iOS 11.0, *)
  func animationEnded(_ transitionCompleted: Bool)
}
