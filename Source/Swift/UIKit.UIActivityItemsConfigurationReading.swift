@_exported import Foundation

@available(iOS 13.0, *)
struct UIActivityItemsConfigurationMetadataKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivityItemsConfigurationMetadataKey.title")
let UIActivityItemsConfigurationMetadataKeyTitle: UIActivityItemsConfigurationMetadataKey
extension UIActivityItemsConfigurationMetadataKey {
  @available(iOS 13.0, *)
  static let title: UIActivityItemsConfigurationMetadataKey
  @available(iOS 13.0, *)
  static let messageBody: UIActivityItemsConfigurationMetadataKey
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivityItemsConfigurationMetadataKey.messageBody")
let UIActivityItemsConfigurationMetadataKeyMessageBody: UIActivityItemsConfigurationMetadataKey
@available(iOS 13.0, *)
struct UIActivityItemsConfigurationPreviewIntent : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivityItemsConfigurationPreviewIntent.fullSize")
let UIActivityItemsConfigurationPreviewIntentFullSize: UIActivityItemsConfigurationPreviewIntent
extension UIActivityItemsConfigurationPreviewIntent {
  @available(iOS 13.0, *)
  static let fullSize: UIActivityItemsConfigurationPreviewIntent
  @available(iOS 13.0, *)
  static let thumbnail: UIActivityItemsConfigurationPreviewIntent
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivityItemsConfigurationPreviewIntent.thumbnail")
let UIActivityItemsConfigurationPreviewIntentThumbnail: UIActivityItemsConfigurationPreviewIntent
@available(iOS 13.0, *)
struct UIActivityItemsConfigurationInteraction : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
  typealias RawValue = String
  typealias _ObjectiveCType = NSString
}
@available(iOS 13.0, *)
@available(swift, obsoleted: 3, renamed: "UIActivityItemsConfigurationInteraction.share")
let UIActivityItemsConfigurationInteractionShare: UIActivityItemsConfigurationInteraction
extension UIActivityItemsConfigurationInteraction {
  @available(iOS 13.0, *)
  static let share: UIActivityItemsConfigurationInteraction
}
@available(iOS 13.0, *)
protocol UIActivityItemsConfigurationReading : NSObjectProtocol {
  var itemProvidersForActivityItemsConfiguration: [NSItemProvider] { get }
  optional func activityItemsConfigurationSupports(interaction: UIActivityItemsConfigurationInteraction) -> Bool
  @available(swift, obsoleted: 3, renamed: "activityItemsConfigurationSupports(interaction:)")
  optional func activityItemsConfigurationSupportsInteraction(_ interaction: UIActivityItemsConfigurationInteraction) -> Bool
  optional func activityItemsConfigurationMetadata(key: UIActivityItemsConfigurationMetadataKey) -> Any?
  @available(swift, obsoleted: 3, renamed: "activityItemsConfigurationMetadata(key:)")
  optional func activityItemsConfigurationMetadataForKey(_ key: UIActivityItemsConfigurationMetadataKey) -> Any?
  optional func activityItemsConfigurationMetadataForItem(at index: Int, key: UIActivityItemsConfigurationMetadataKey) -> Any?
  @available(swift, obsoleted: 3, renamed: "activityItemsConfigurationMetadataForItem(at:key:)")
  optional func activityItemsConfigurationMetadataForItemAtIndex(_ index: Int, key: UIActivityItemsConfigurationMetadataKey) -> Any?
  optional func activityItemsConfigurationPreviewForItem(at index: Int, intent: UIActivityItemsConfigurationPreviewIntent, suggestedSize: CGSize) -> NSItemProvider?
  @available(swift, obsoleted: 3, renamed: "activityItemsConfigurationPreviewForItem(at:intent:suggestedSize:)")
  optional func activityItemsConfigurationPreviewForItemAtIndex(_ index: Int, intent: UIActivityItemsConfigurationPreviewIntent, suggestedSize: CGSize) -> NSItemProvider?
  optional var applicationActivitiesForActivityItemsConfiguration: [UIActivity]? { get }
}
