@_exported import Foundation

struct UIDataDetectorTypes : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  typealias RawValue = UInt
  typealias Element = UIDataDetectorTypes
  typealias ArrayLiteralElement = UIDataDetectorTypes
  static var phoneNumber: UIDataDetectorTypes { get }
  @available(swift, obsoleted: 3, renamed: "phoneNumber")
  static var PhoneNumber: UIDataDetectorTypes { get }
  static var link: UIDataDetectorTypes { get }
  @available(swift, obsoleted: 3, renamed: "link")
  static var Link: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var address: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "address")
  static var Address: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var calendarEvent: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  @available(swift, obsoleted: 3, renamed: "calendarEvent")
  static var CalendarEvent: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  static var shipmentTrackingNumber: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "shipmentTrackingNumber")
  static var ShipmentTrackingNumber: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  static var flightNumber: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "flightNumber")
  static var FlightNumber: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  static var lookupSuggestion: UIDataDetectorTypes { get }
  @available(iOS 10.0, *)
  @available(swift, obsoleted: 3, renamed: "lookupSuggestion")
  static var LookupSuggestion: UIDataDetectorTypes { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  static var none: UIDataDetectorTypes { get }
  @available(*, unavailable, message: "use [] to construct an empty option set")
  @available(swift, obsoleted: 3, renamed: "none")
  static var None: UIDataDetectorTypes { get }
  static var all: UIDataDetectorTypes { get }
  @available(swift, obsoleted: 3, renamed: "all")
  static var All: UIDataDetectorTypes { get }
}
