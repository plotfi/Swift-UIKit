@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIPrinterPickerController.CompletionHandler")
typealias UIPrinterPickerCompletionHandler = UIPrinterPickerController.CompletionHandler
extension UIPrinterPickerController {
  typealias CompletionHandler = (UIPrinterPickerController, Bool, Error?) -> Void
}
protocol UIPrinterPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func printerPickerControllerParentViewController(_ printerPickerController: UIPrinterPickerController) -> UIViewController?

  /**
   *  @method     printerPickerController:shouldShowPrinter:
   *  @discussion	Use to filter out specific printers from the printer picker.
   * 	        Evaluate the UIPrinter object and returns YES if the printer should
   * 	        be shown, NO otherwise.
   *		This delegate can assume that all UIPrinter properties are available
   *		(the contactPrinter: method need not be called).
   * 	        This method may be called from threads other than the main thread,
   * 	        and may be called simultaneously from several different threads.
   */
  @available(iOS 8.0, *)
  optional func printerPickerController(_ printerPickerController: UIPrinterPickerController, shouldShow printer: UIPrinter) -> Bool

  /**
   *  @method     printerPickerController:shouldShowPrinter:
   *  @discussion	Use to filter out specific printers from the printer picker.
   * 	        Evaluate the UIPrinter object and returns YES if the printer should
   * 	        be shown, NO otherwise.
   *		This delegate can assume that all UIPrinter properties are available
   *		(the contactPrinter: method need not be called).
   * 	        This method may be called from threads other than the main thread,
   * 	        and may be called simultaneously from several different threads.
   */
  @available(swift, obsoleted: 3, renamed: "printerPickerController(_:shouldShow:)")
  optional func printerPickerController(_ printerPickerController: UIPrinterPickerController, shouldShowPrinter printer: UIPrinter) -> Bool
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillPresent(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidPresent(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillDismiss(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidDismiss(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidSelectPrinter(_ printerPickerController: UIPrinterPickerController)
}
@available(iOS 8.0, *)
class UIPrinterPickerController : NSObject {

  /**
   *  @method     printerPickerControllerWithInitiallySelectedPrinter:
   *  @discussion This method returns a printer picker controller object for showing the
   *              UI that allows the user to select a printer. This is only used with the
   *              UIPrintInteractionController's printWithoutUIToPrinter: method.
   *              If no printer should be preselected, use a value of nil for the parameter.
   */
  /*not inherited*/ init(initiallySelectedPrinter printer: UIPrinter?)

  /**
   *  @method     printerPickerControllerWithInitiallySelectedPrinter:
   *  @discussion This method returns a printer picker controller object for showing the
   *              UI that allows the user to select a printer. This is only used with the
   *              UIPrintInteractionController's printWithoutUIToPrinter: method.
   *              If no printer should be preselected, use a value of nil for the parameter.
   */
  @available(*, unavailable, renamed: "init(initiallySelectedPrinter:)", message: "Not available in Swift")
  class func printerPickerControllerWithInitiallySelectedPrinter(_ printer: UIPrinter?) -> UIPrinterPickerController

  /**
   * @discussion	The selected printer. Set this before presenting the UI to show the currently
   * 	        selected printer. Use this to determine which printer the user selected.
   */
  var selectedPrinter: UIPrinter? { get }
  weak var delegate: @sil_weak UIPrinterPickerControllerDelegate?
  func present(animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "present(animated:completionHandler:)")
  func presentAnimated(_ animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  func present(from rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "present(from:in:animated:completionHandler:)")
  func presentFromRect(_ rect: CGRect, inView view: UIView, animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  func present(from item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  @available(swift, obsoleted: 3, renamed: "present(from:animated:completionHandler:)")
  func presentFromBarButtonItem(_ item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrinterPickerController.CompletionHandler? = nil) -> Bool
  func dismiss(animated: Bool)
  @available(swift, obsoleted: 3, renamed: "dismiss(animated:)")
  func dismissAnimated(_ animated: Bool)
  init()
}
