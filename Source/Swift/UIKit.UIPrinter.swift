@_exported import Foundation

@available(iOS 8.0, *)
class UIPrinter : NSObject {

  /**
   *  @method     printerWithURL:
   *  @abstract   Create a printer from its URL
   *  @discussion This method creates a new printer object from the printer's URL.
   *	        A UIPrinter object is returned even if the printer is not available
   *	        on the network.
   */
  /*not inherited*/ init(url: URL)

  /**
   *  @method     printerWithURL:
   *  @abstract   Create a printer from its URL
   *  @discussion This method creates a new printer object from the printer's URL.
   *	        A UIPrinter object is returned even if the printer is not available
   *	        on the network.
   */
  @available(swift, obsoleted: 3, renamed: "init(url:)")
  /*not inherited*/ init(URL url: URL)

  /**
   *  @method     printerWithURL:
   *  @abstract   Create a printer from its URL
   *  @discussion This method creates a new printer object from the printer's URL.
   *	        A UIPrinter object is returned even if the printer is not available
   *	        on the network.
   */
  @available(*, unavailable, renamed: "init(url:)", message: "Not available in Swift")
  class func printerWithURL(_ url: URL) -> UIPrinter

  /**
   *  @abstract   Return the URL of the printer.
   *  @discussion This method returns the full URL of the printer which can be
   *	        used in future calls to printerWithURL to access the same
   *	        printer.
   */
  var url: URL { get }

  /**
   *  @abstract   Return the URL of the printer.
   *  @discussion This method returns the full URL of the printer which can be
   *	        used in future calls to printerWithURL to access the same
   *	        printer.
   */
  @available(swift, obsoleted: 3, renamed: "url")
  var URL: URL { get }

  /**
   *  @abstract   Return a human-readable printer name.
   *  @discussion This method returns the printer name suitable for displaying in the UI.
   */
  var displayName: String { get }

  /**
   *  @abstract   Return a human-readable location.
   *  @discussion This method returns the printer's location. This is human-readable text that
   * 	        usually appears in the UI below the printer's name (such as "Front Office").
   *  	        Returns nil if the printer doesn't have a location string.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var displayLocation: String? { get }

  /**
   *  @abstract   Returns the supported job types of this printer.
   *  @discussion This method returns a mask with all the UIPrinterJobTypes values that
   *		the printer supports.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var supportedJobTypes: UIPrinter.JobTypes { get }

  /**
   *  @abstract   Return make (manufacturer) and model of the printer.
   *  @discussion This method returns the make and model of the printer, which
   *		is usually the manufacturer, model, and model number.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var makeAndModel: String? { get }

  /**
   *  @abstract   Return whether this printer supports color printing.
   *  @discussion This method returns YES if the printer supports full color printing, NO
   * 		otherwise.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   *
   */
  var supportsColor: Bool { get }

  /**
   *  @abstract   Return whether this printer supports duplex (double-sided) printing.
   *  @discussion This method returns YES if the printer supports duplex (double-sided)
   *		printing, NO otherwise.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var supportsDuplex: Bool { get }

  /**
   *  @method     contactPrinter:
   *  @abstract   Check if printer is reachable, and update printer information.
   *  @discussion This method checks to see if this printer is available on the network,
   * 		and sets the displayName, displayLocation, supportedJobTypes, makeAndModel,
   *		supportsColor, and supportsDuplex for the printer.
   *		The operation can take up to 30 seconds.
   */
  func contactPrinter(_ completionHandler: ((Bool) -> Void)? = nil)

  /**
   *  @method     contactPrinter:
   *  @abstract   Check if printer is reachable, and update printer information.
   *  @discussion This method checks to see if this printer is available on the network,
   * 		and sets the displayName, displayLocation, supportedJobTypes, makeAndModel,
   *		supportsColor, and supportsDuplex for the printer.
   *		The operation can take up to 30 seconds.
   */
  func contactPrinter() async -> Bool
  init()
}

/**
 *  @enum       UIPrinterJobTypes
 *  @abstract   Job types supported by a printer.
 *  @discussion This enumeration provides the abstract job types
 *  		reported by the UIPrinter supportedJobTypes method.
 *  @constant   UIPrinterJobTypeUnknown		Unknown printer support.
 *  @constant   UIPrinterJobTypeDocument   	The printer supports standard document printing.
 *  @constant   UIPrinterJobTypeEnvelope	The printer supports printing on envelopes.
 *  @constant   UIPrinterJobTypeLabel      	The printer supports printing on cut labels.
 *  @constant   UIPrinterJobTypePhoto      	The printer supports printing with photographic print quality.
 *  @constant   UIPrinterJobTypeReceipt    	The printer supports printing receipts on continuous rolls.
 *  @constant   UIPrinterJobTypeRoll       	The printer supports printing documents or photos on continuous rolls.
 *  @constant   UIPrinterJobTypeLargeFormat     The printer supports printing larger than ISO A3 size.
 *  @constant   UIPrinterJobTypePostcard        The printer supports printing on postcards.
 */
@available(iOS 8.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIPrinter.JobTypes")
typealias UIPrinterJobTypes = UIPrinter.JobTypes
extension UIPrinter {

  /**
   *  @enum       UIPrinterJobTypes
   *  @abstract   Job types supported by a printer.
   *  @discussion This enumeration provides the abstract job types
   *  		reported by the UIPrinter supportedJobTypes method.
   *  @constant   UIPrinterJobTypeUnknown		Unknown printer support.
   *  @constant   UIPrinterJobTypeDocument   	The printer supports standard document printing.
   *  @constant   UIPrinterJobTypeEnvelope	The printer supports printing on envelopes.
   *  @constant   UIPrinterJobTypeLabel      	The printer supports printing on cut labels.
   *  @constant   UIPrinterJobTypePhoto      	The printer supports printing with photographic print quality.
   *  @constant   UIPrinterJobTypeReceipt    	The printer supports printing receipts on continuous rolls.
   *  @constant   UIPrinterJobTypeRoll       	The printer supports printing documents or photos on continuous rolls.
   *  @constant   UIPrinterJobTypeLargeFormat     The printer supports printing larger than ISO A3 size.
   *  @constant   UIPrinterJobTypePostcard        The printer supports printing on postcards.
   */
  @available(iOS 8.0, *)
  struct JobTypes : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    typealias RawValue = Int
    typealias Element = UIPrinter.JobTypes
    typealias ArrayLiteralElement = UIPrinter.JobTypes
    static var unknown: UIPrinter.JobTypes { get }
    @available(*, unavailable, message: "use [] to construct an empty option set")
    @available(swift, obsoleted: 3, renamed: "unknown")
    static var Unknown: UIPrinter.JobTypes { get }
    static var document: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "document")
    static var Document: UIPrinter.JobTypes { get }
    static var envelope: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "envelope")
    static var Envelope: UIPrinter.JobTypes { get }
    static var label: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "label")
    static var Label: UIPrinter.JobTypes { get }
    static var photo: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "photo")
    static var Photo: UIPrinter.JobTypes { get }
    static var receipt: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "receipt")
    static var Receipt: UIPrinter.JobTypes { get }
    static var roll: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "roll")
    static var Roll: UIPrinter.JobTypes { get }
    static var largeFormat: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "largeFormat")
    static var LargeFormat: UIPrinter.JobTypes { get }
    static var postcard: UIPrinter.JobTypes { get }
    @available(swift, obsoleted: 3, renamed: "postcard")
    static var Postcard: UIPrinter.JobTypes { get }
  }
}
