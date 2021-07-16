@_exported import Foundation

var __NSDATAASSET_SHARED_SECTION__: Int32 { get }
@available(iOS 9.0, *)
typealias NSDataAssetName = String

/// NSDataAsset represents the contents of data entries in your asset catalog.
/// Data assets are not in the same class of stored content as images, so you cannot use a data asset to get image data for an image.
@available(iOS 9.0, *)
class NSDataAsset : NSObject, NSCopying {
  @available(*, unavailable)
  convenience init()

  /// Equivalent to -initWithName:name bundle:[NSBundle mainBundle];
  convenience init?(name: NSDataAssetName)

  /// Create a data asset with the given name from the given bundle. Returns nil if the asset was not found.
  init?(name: NSDataAssetName, bundle: Bundle)

  /// The name used to reference the data asset
  var name: NSDataAssetName { get }

  /// The data for this asset, as stored in the asset catalog
  var data: Data { get }

  /// The Uniform Type Identifier for this data object.
  var typeIdentifier: String { get }
  @available(iOS 9.0, *)
  func copy(with zone: NSZone? = nil) -> Any
}
