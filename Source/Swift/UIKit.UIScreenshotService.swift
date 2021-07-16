@_exported import Foundation


/**
 @abstract This class allows your application to produce a higher fidelity, PDF screenshot to the user. Set the delegate so that when a screenshot is taken, screenshots can show the full document content from the application.
 */
@available(iOS 13.0, *)
class UIScreenshotService : NSObject {
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self

  /**
   @abstract Assign a delegate in order to send PDF data to accompany the screenshot taken by the user
   */
  weak var delegate: @sil_weak UIScreenshotServiceDelegate?

  /**
   @abstract The window scene associated with the screenshot service
   */
  weak var windowScene: @sil_weak UIWindowScene? { get }
}
@available(iOS 13.0, *)
extension UIWindowScene {

  /**
   @abstract The screenshot object associated with the scene
   @discussion This is non-null if the screenshot service is available for this window scene
   */
  var screenshotService: UIScreenshotService? { get }
}
protocol UIScreenshotServiceDelegate : NSObjectProtocol {

  /**
   @abstract  The delegate method to send the PDF data to screenshots
   @discussion The delegate is required to send the data via the completion handler
   @param screenshotService The screenshot service object associated per scene
   @param completionHandler The block to execute when the PDF data is ready.
   If no PDF data is available, data can be nil. The indexOfCurrentPage is zero-based, and is the index of the current page of the snapshotted PDF. The rectInCurrentPage is the rect in PDF coordinates with respect to the current page. If the receiver cannot provide the visible area, pass CGRectZero for rectInCurrentPage.
   */
  @available(iOS 13.0, *)
  optional func screenshotService(_ screenshotService: UIScreenshotService, generatePDFRepresentationWithCompletion completionHandler: @escaping (Data?, Int, CGRect) -> Void)

  /**
   @abstract  The delegate method to send the PDF data to screenshots
   @discussion The delegate is required to send the data via the completion handler
   @param screenshotService The screenshot service object associated per scene
   @param completionHandler The block to execute when the PDF data is ready.
   If no PDF data is available, data can be nil. The indexOfCurrentPage is zero-based, and is the index of the current page of the snapshotted PDF. The rectInCurrentPage is the rect in PDF coordinates with respect to the current page. If the receiver cannot provide the visible area, pass CGRectZero for rectInCurrentPage.
   */
  @available(iOS 13.0, *)
  optional func screenshotServiceGeneratePDFRepresentation(_ screenshotService: UIScreenshotService) async -> (Data?, Int, CGRect)
}
