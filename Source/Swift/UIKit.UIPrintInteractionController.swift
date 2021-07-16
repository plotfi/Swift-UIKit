@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIPrintInteractionController.CompletionHandler")
typealias UIPrintInteractionCompletionHandler = UIPrintInteractionController.CompletionHandler
extension UIPrintInteractionController {
  typealias CompletionHandler = (UIPrintInteractionController, Bool, Error?) -> Void
}
@available(swift, obsoleted: 4.2, renamed: "UIPrinter.CutterBehavior")
typealias UIPrinterCutterBehavior = UIPrinter.CutterBehavior
extension UIPrinter {
  @available(iOS 9.0, *)
  enum CutterBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case noCut
    @available(swift, obsoleted: 3, renamed: "noCut")
    static var NoCut: UIPrinter.CutterBehavior { get }
    case printerDefault
    @available(swift, obsoleted: 3, renamed: "printerDefault")
    static var PrinterDefault: UIPrinter.CutterBehavior { get }
    case cutAfterEachPage
    @available(swift, obsoleted: 3, renamed: "cutAfterEachPage")
    static var CutAfterEachPage: UIPrinter.CutterBehavior { get }
    case cutAfterEachCopy
    @available(swift, obsoleted: 3, renamed: "cutAfterEachCopy")
    static var CutAfterEachCopy: UIPrinter.CutterBehavior { get }
    case cutAfterEachJob
    @available(swift, obsoleted: 3, renamed: "cutAfterEachJob")
    static var CutAfterEachJob: UIPrinter.CutterBehavior { get }
  }
}
@available(iOS 4.2, *)
class UIPrintInteractionController : NSObject {
  class var isPrintingAvailable: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isPrintingAvailable")
  class var printingAvailable: Bool { get }
  class var printableUTIs: Set<String> { get }
  class func canPrint(_ url: URL) -> Bool
  @available(swift, obsoleted: 3, renamed: "canPrint(_:)")
  class func canPrintURL(_ url: URL) -> Bool
  class func canPrint(_ data: Data) -> Bool
  @available(swift, obsoleted: 3, renamed: "canPrint(_:)")
  class func canPrintData(_ data: Data) -> Bool
  class var shared: UIPrintInteractionController { get }
  @available(swift, obsoleted: 3, renamed: "shared")
  class var sharedPrintController: UIPrintInteractionController { get }
  var printInfo: UIPrintInfo?
  weak var delegate: @sil_weak UIPrintInteractionControllerDelegate?
  @available(iOS, introduced: 4.2, deprecated: 10.0, message: "Pages can be removed from the print preview, so page range is always shown.")
  var showsPageRange: Bool
  @available(iOS 7.0, *)
  var showsNumberOfCopies: Bool
  @available(iOS 8.0, *)
  var showsPaperSelectionForLoadedPapers: Bool
  var printPaper: UIPrintPaper? { get }
  var printPageRenderer: UIPrintPageRenderer?
  var printFormatter: UIPrintFormatter?
  var printingItem: Any?
  var printingItems: [Any]?
  func present(animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "present(animated:completionHandler:)")
  func presentAnimated(_ animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  func present(from rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "present(from:in:animated:completionHandler:)")
  func presentFromRect(_ rect: CGRect, inView view: UIView, animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  func present(from item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "present(from:animated:completionHandler:)")
  func presentFromBarButtonItem(_ item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool

  /**
   * @discussion	Use to print without showing the standard print panel. Use with a
   *		UIPrinter found using the UIPrinterPickerController.
   *              The value for the duplex property on printInfo will be ignored.
   */
  func print(to printer: UIPrinter, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool

  /**
   * @discussion	Use to print without showing the standard print panel. Use with a
   *		UIPrinter found using the UIPrinterPickerController.
   *              The value for the duplex property on printInfo will be ignored.
   */
  @available(swift, obsoleted: 3, renamed: "print(to:completionHandler:)")
  func printToPrinter(_ printer: UIPrinter, completionHandler completion: UIPrintInteractionController.CompletionHandler? = nil) -> Bool
  func dismiss(animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismiss(animated:)")
  func dismissAnimated(_ animated: Bool)
  init()
}
protocol UIPrintInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 4.2, *)
  optional func printInteractionControllerParentViewController(_ printInteractionController: UIPrintInteractionController) -> UIViewController?
  @available(iOS 4.2, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, choosePaper paperList: [UIPrintPaper]) -> UIPrintPaper
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillPresentPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidPresentPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillDismissPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidDismissPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillStartJob(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidFinishJob(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 7.0, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, cutLengthFor paper: UIPrintPaper) -> CGFloat
  @available(iOS 7.0, *)
  @available(swift, obsoleted: 3, renamed: "printInteractionController(_:cutLengthFor:)")
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, cutLengthForPaper paper: UIPrintPaper) -> CGFloat
  @available(iOS 9.0, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, chooseCutterBehavior availableBehaviors: [Any]) -> UIPrinter.CutterBehavior
}
