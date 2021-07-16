@_exported import Foundation

@available(iOS 13.0, *)
class UIActivityItemsConfiguration : NSObject, UIActivityItemsConfigurationReading {
  var localObject: Any?
  var supportedInteractions: [UIActivityItemsConfigurationInteraction]
  var metadataProvider: ((UIActivityItemsConfigurationMetadataKey) -> Any?)?
  var perItemMetadataProvider: ((Int, UIActivityItemsConfigurationMetadataKey) -> Any?)?
  var previewProvider: ((Int, UIActivityItemsConfigurationPreviewIntent, CGSize) -> NSItemProvider?)?
  var applicationActivitiesProvider: (() -> [UIActivity])?
  @available(*, unavailable, message: "superseded by import of -[UIActivityItemsConfiguration initWithObjects:]")
  convenience init(objects: [NSItemProviderWriting])
  @available(*, unavailable, renamed: "init(objects:)", message: "Not available in Swift")
  class func activityItemsConfigurationWithObjects(_ objects: [NSItemProviderWriting]) -> Self
  @available(*, unavailable, message: "superseded by import of -[UIActivityItemsConfiguration initWithItemProviders:]")
  convenience init(itemProviders: [NSItemProvider])
  @available(*, unavailable, renamed: "init(itemProviders:)", message: "Not available in Swift")
  class func activityItemsConfigurationWithItemProviders(_ itemProviders: [NSItemProvider]) -> Self
  init(objects: [NSItemProviderWriting])
  init(itemProviders: [NSItemProvider])
  @available(*, unavailable)
  convenience init()
  @available(*, unavailable)
  class func new() -> Self
  @available(iOS 13.0, *)
  var itemProvidersForActivityItemsConfiguration: [NSItemProvider] { get }
  @available(iOS 13.0, *)
  var applicationActivitiesForActivityItemsConfiguration: [UIActivity]? { get }
  @available(iOS 13.0, *)
  func activityItemsConfigurationSupports(interaction: UIActivityItemsConfigurationInteraction) -> Bool
  @available(iOS 13.0, *)
  func activityItemsConfigurationMetadata(key: UIActivityItemsConfigurationMetadataKey) -> Any?
  @available(iOS 13.0, *)
  func activityItemsConfigurationMetadataForItem(at index: Int, key: UIActivityItemsConfigurationMetadataKey) -> Any?
  @available(iOS 13.0, *)
  func activityItemsConfigurationPreviewForItem(at index: Int, intent: UIActivityItemsConfigurationPreviewIntent, suggestedSize: CGSize) -> NSItemProvider?
}
