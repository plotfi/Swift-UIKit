@_exported import Foundation

@available(iOS 14.5, *)
class UIEventAttribution : NSObject, NSCopying {

  /// An identifier that is associated with the source of the attribution. For example, you may choose to use this as a campaign identifier to measure the effectiveness of different advertisement campaigns.
  ///
  /// This field corresponds to `source_id` in the subsequent attribution report.
  var sourceIdentifier: UInt8 { get }

  /// The destination URL of an attribution. For example, the link opened when an advertisement is tapped.
  ///
  /// This field corresponds to `attributed_on_site` in the subsequent attribution report.
  var destinationURL: URL { get }

  /// The URL to which the attribution report will be sent. You do not provide this field at creation time. Instead, you must define the URL
  /// as a string in your app's Info.plist under the `NSAdvertisingAttributionReportEndpoint` key.
  ///
  /// This field corresponds to `source_site` in the subsequent attribution report.
  var reportEndpoint: URL? { get }

  /// A high-level description of the source of the attribution. For example, this could be a description of the content of an advertisement a user taps on.
  ///
  /// The system may truncate this field if it is too long.
  var sourceDescription: String { get }

  /// The name of the party that purchased the content to be attributed. For example, this could be the name of the party that purchased the placement of an advertisement.
  ///
  /// The system may truncate this field if it is too long.
  var purchaser: String { get }

  /// Create a `UIEventAttribution` object.
  ///
  /// @param sourceIdentifier An identifier associated with the attribution.
  /// @param destinationURL The destination URL of the attribution.
  /// @param sourceDescription A high-level description of the content to be attributed. Pass in an empty string if no description is available.
  /// @param purchaser The name of the party that purchased the content to be attributed. Pass in an empty string if no name is available.
  ///
  /// @return An instance of `UIEventAttribution` with the specified values for each field.
  ///
  /// The `sourceDescription` and `purchaser` fields may be truncated by the system if they are too long.
  init(sourceIdentifier: UInt8, destinationURL: URL, sourceDescription: String, purchaser: String)
  @available(*, unavailable)
  init()
  @available(*, unavailable)
  class func new() -> Self
  @available(iOS 14.5, *)
  func copy(with zone: NSZone? = nil) -> Any
}
