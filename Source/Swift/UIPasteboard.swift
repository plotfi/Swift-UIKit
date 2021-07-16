@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.Name")
typealias UIPasteboardName = UIPasteboard.Name
@available(swift, obsoleted: 3, renamed: "UIPasteboard.Name.general")
let UIPasteboardNameGeneral: UIPasteboard.Name
extension UIPasteboard.Name {
  static let general: UIPasteboard.Name
}
@available(iOS, introduced: 3.0, deprecated: 10.0, message: "The Find pasteboard is no longer available.")
let UIPasteboardNameFind: String
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPasteboard.DetectionPattern")
typealias UIPasteboardDetectionPattern = UIPasteboard.DetectionPattern

/// NSString value, suitable for implementing "Paste and Go"
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPasteboard.DetectionPattern.probableWebURL")
let UIPasteboardDetectionPatternProbableWebURL: UIPasteboard.DetectionPattern
extension UIPasteboard.DetectionPattern {

  /// NSString value, suitable for implementing "Paste and Go"
  @available(iOS 14.0, *)
  static let probableWebURL: UIPasteboard.DetectionPattern

  /// NSString value, suitable for implementing "Paste and Search"
  @available(iOS 14.0, *)
  static let probableWebSearch: UIPasteboard.DetectionPattern

  /// NSNumber value
  @available(iOS 14.0, *)
  static let number: UIPasteboard.DetectionPattern
}

/// NSString value, suitable for implementing "Paste and Search"
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPasteboard.DetectionPattern.probableWebSearch")
let UIPasteboardDetectionPatternProbableWebSearch: UIPasteboard.DetectionPattern

/// NSNumber value
@available(iOS 14.0, *)
@available(swift, obsoleted: 3, renamed: "UIPasteboard.DetectionPattern.number")
let UIPasteboardDetectionPatternNumber: UIPasteboard.DetectionPattern
@available(iOS 3.0, *)
class UIPasteboard : NSObject {
  class var general: UIPasteboard { get }
  @available(swift, obsoleted: 3, renamed: "general")
  class var generalPasteboard: UIPasteboard { get }
  /*not inherited*/ init?(name pasteboardName: UIPasteboard.Name, create: Bool)
  @available(*, unavailable, renamed: "init(name:create:)", message: "Not available in Swift")
  class func pasteboardWithName(_ pasteboardName: UIPasteboard.Name, create: Bool) -> UIPasteboard?
  class func withUniqueName() -> UIPasteboard
  @available(swift, obsoleted: 3, renamed: "withUniqueName()")
  class func pasteboardWithUniqueName() -> UIPasteboard
  var name: UIPasteboard.Name { get }
  class func remove(withName pasteboardName: UIPasteboard.Name)
  @available(swift, obsoleted: 3, renamed: "remove(withName:)")
  class func removePasteboardWithName(_ pasteboardName: UIPasteboard.Name)
  var isPersistent: Bool { get }
  @available(swift, obsoleted: 3, renamed: "isPersistent")
  var persistent: Bool { get }
  @available(iOS, introduced: 3.0, deprecated: 10.0, message: "Do not set persistence on pasteboards. This property is set automatically.")
  func setPersistent(_ persistent: Bool)
  var changeCount: Int { get }
  @available(iOS 11.0, *)
  var itemProviders: [NSItemProvider]
  @available(iOS 11.0, *)
  func setItemProviders(_ itemProviders: [NSItemProvider], localOnly: Bool, expirationDate: Date?)
  @available(iOS 11.0, *)
  func setObjects(_ objects: [NSItemProviderWriting])
  @available(iOS 11.0, *)
  func setObjects(_ objects: [NSItemProviderWriting], localOnly: Bool, expirationDate: Date?)
  var types: [String] { get }
  @available(swift, obsoleted: 3, renamed: "types")
  var pasteboardTypes: [String] { get }
  func contains(pasteboardTypes: [String]) -> Bool
  @available(swift, obsoleted: 3, renamed: "contains(pasteboardTypes:)")
  func containsPasteboardTypes(_ pasteboardTypes: [String]) -> Bool
  func data(forPasteboardType pasteboardType: String) -> Data?
  @available(swift, obsoleted: 3, renamed: "data(forPasteboardType:)")
  func dataForPasteboardType(_ pasteboardType: String) -> Data?
  func value(forPasteboardType pasteboardType: String) -> Any?
  @available(swift, obsoleted: 3, renamed: "value(forPasteboardType:)")
  func valueForPasteboardType(_ pasteboardType: String) -> Any?
  func setValue(_ value: Any, forPasteboardType pasteboardType: String)
  func setData(_ data: Data, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func types(forItemSet itemSet: IndexSet?) -> [[String]]?
  @available(swift, obsoleted: 3, renamed: "types(forItemSet:)")
  func pasteboardTypesForItemSet(_ itemSet: IndexSet?) -> [[String]]?
  func contains(pasteboardTypes: [String], inItemSet itemSet: IndexSet?) -> Bool
  @available(swift, obsoleted: 3, renamed: "contains(pasteboardTypes:inItemSet:)")
  func containsPasteboardTypes(_ pasteboardTypes: [String], inItemSet itemSet: IndexSet?) -> Bool
  func itemSet(withPasteboardTypes pasteboardTypes: [String]) -> IndexSet?
  @available(swift, obsoleted: 3, renamed: "itemSet(withPasteboardTypes:)")
  func itemSetWithPasteboardTypes(_ pasteboardTypes: [String]) -> IndexSet?
  func values(forPasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Any]?
  @available(swift, obsoleted: 3, renamed: "values(forPasteboardType:inItemSet:)")
  func valuesForPasteboardType(_ pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Any]?
  func data(forPasteboardType pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Data]?
  @available(swift, obsoleted: 3, renamed: "data(forPasteboardType:inItemSet:)")
  func dataForPasteboardType(_ pasteboardType: String, inItemSet itemSet: IndexSet?) -> [Data]?
  var items: [[String : Any]]
  func addItems(_ items: [[String : Any]])
  @available(iOS 10.0, *)
  func setItems(_ items: [[String : Any]], options: [UIPasteboard.OptionsKey : Any] = [:])
  var string: String?
  var strings: [String]?
  var url: URL?
  @available(swift, obsoleted: 3, renamed: "url")
  var URL: URL?
  var urls: [URL]?
  @available(swift, obsoleted: 3, renamed: "urls")
  var URLs: [URL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
  @available(iOS 10.0, *)
  var hasStrings: Bool { get }
  @available(iOS 10.0, *)
  var hasURLs: Bool { get }
  @available(iOS 10.0, *)
  var hasImages: Bool { get }
  @available(iOS 10.0, *)
  var hasColors: Bool { get }

  /// Detects patterns in the first pasteboard item.
  ///
  /// @param patterns Detect only these patterns.
  /// @param completionHandler Receives which patterns were detected, or an error.
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Set<UIPasteboard.DetectionPattern>?, Error?) -> Void)

  /// Detects patterns in the first pasteboard item.
  ///
  /// @param patterns Detect only these patterns.
  /// @param completionHandler Receives which patterns were detected, or an error.
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>) async throws -> Set<UIPasteboard.DetectionPattern>

  /// Detects patterns in the first pasteboard item.
  ///
  /// @param patterns Detect only these patterns.
  /// @param completionHandler Receives which patterns were detected, or an error.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__detectPatterns(forPatterns:completionHandler:)")
  func __detectPatternsForPatterns(_ patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Set<UIPasteboard.DetectionPattern>?, Error?) -> Void)

  /// Detects patterns in the specified pasteboard items.
  ///
  /// @param patterns Detect only these patterns.
  /// @param itemSet Specifies which pasteboard items by their position. Nil means all items.
  /// @param completionHandler Receives which patterns were detected per item specified,
  ///                          or an error.
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([Set<UIPasteboard.DetectionPattern>]?, Error?) -> Void)

  /// Detects patterns in the specified pasteboard items.
  ///
  /// @param patterns Detect only these patterns.
  /// @param itemSet Specifies which pasteboard items by their position. Nil means all items.
  /// @param completionHandler Receives which patterns were detected per item specified,
  ///                          or an error.
  @available(iOS 14.0, *)
  func __detectPatterns(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?) async throws -> [Set<UIPasteboard.DetectionPattern>]

  /// Detects patterns in the specified pasteboard items.
  ///
  /// @param patterns Detect only these patterns.
  /// @param itemSet Specifies which pasteboard items by their position. Nil means all items.
  /// @param completionHandler Receives which patterns were detected per item specified,
  ///                          or an error.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__detectPatterns(forPatterns:inItemSet:completionHandler:)")
  func __detectPatternsForPatterns(_ patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([Set<UIPasteboard.DetectionPattern>]?, Error?) -> Void)

  /// Detects patterns and corresponding values in the first pasteboard item.
  ///
  /// @param patterns Detect only these patterns.
  /// @param completionHandler Receives which patterns and values were detected, or an error.
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping ([UIPasteboard.DetectionPattern : Any]?, Error?) -> Void)

  /// Detects patterns and corresponding values in the first pasteboard item.
  ///
  /// @param patterns Detect only these patterns.
  /// @param completionHandler Receives which patterns and values were detected, or an error.
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>) async throws -> [UIPasteboard.DetectionPattern : Any]

  /// Detects patterns and corresponding values in the first pasteboard item.
  ///
  /// @param patterns Detect only these patterns.
  /// @param completionHandler Receives which patterns and values were detected, or an error.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__detectValues(forPatterns:completionHandler:)")
  func __detectValuesForPatterns(_ patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping ([UIPasteboard.DetectionPattern : Any]?, Error?) -> Void)

  /// Detects patterns and corresponding values in the specified pasteboard items.
  ///
  /// @param patterns Detect only these patterns.
  /// @param itemSet Specifies which pasteboard items by their position. Nil means all items.
  /// @param completionHandler Receives which patterns and values were detected per item specified,
  ///                          or an error.
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([[UIPasteboard.DetectionPattern : Any]]?, Error?) -> Void)

  /// Detects patterns and corresponding values in the specified pasteboard items.
  ///
  /// @param patterns Detect only these patterns.
  /// @param itemSet Specifies which pasteboard items by their position. Nil means all items.
  /// @param completionHandler Receives which patterns and values were detected per item specified,
  ///                          or an error.
  @available(iOS 14.0, *)
  func __detectValues(forPatterns patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?) async throws -> [[UIPasteboard.DetectionPattern : Any]]

  /// Detects patterns and corresponding values in the specified pasteboard items.
  ///
  /// @param patterns Detect only these patterns.
  /// @param itemSet Specifies which pasteboard items by their position. Nil means all items.
  /// @param completionHandler Receives which patterns and values were detected per item specified,
  ///                          or an error.
  @available(iOS 14.0, *)
  @available(swift, obsoleted: 3, renamed: "__detectValues(forPatterns:inItemSet:completionHandler:)")
  func __detectValuesForPatterns(_ patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping ([[UIPasteboard.DetectionPattern : Any]]?, Error?) -> Void)
  init()
}

extension UIPasteboard {
  /// Detects patterns in the first pasteboard item.
  ///
  /// - Parameters:
  ///   - patterns: Detect only these patterns.
  ///   - completionHandler: Receives which patterns were detected, or an error.
  @available(iOS 14.0, *)
  func detectPatterns(for patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Result<Set<UIPasteboard.DetectionPattern>, Error>) -> ())
  /// Detects patterns in the specified pasteboard items.
  ///
  /// - Parameters:
  ///   - patterns: Detect only these patterns.
  ///   - itemSet: Specifies which pasteboard items by their position. Nil means all items.
  ///   - completionHandler: Receives which patterns were detected per item specified,
  ///                        or an error.
  @available(iOS 14.0, *)
  func detectPatterns(for patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping (Result<[Set<UIPasteboard.DetectionPattern>], Error>) -> ())
  /// Detects patterns and corresponding values in the first pasteboard item.
  ///
  /// - Parameters:
  ///   - patterns: Detect only these patterns.
  ///   - completionHandler: Receives which patterns and values were detected, or an error.
  @available(iOS 14.0, *)
  func detectValues(for patterns: Set<UIPasteboard.DetectionPattern>, completionHandler: @escaping (Result<[UIPasteboard.DetectionPattern : Any], Error>) -> ())
  /// Detects patterns and corresponding values in the specified pasteboard items.
  ///
  /// - Parameters:
  ///   - patterns: Detect only these patterns.
  ///   - itemSet: Specifies which pasteboard items by their position. Nil means all items.
  ///   - completionHandler: Receives which patterns and values were detected per item specified,
  ///                        or an error.
  @available(iOS 14.0, *)
  func detectValues(for patterns: Set<UIPasteboard.DetectionPattern>, inItemSet itemSet: IndexSet?, completionHandler: @escaping (Result<[[UIPasteboard.DetectionPattern : Any]], Error>) -> ())
}

extension UIPasteboard {
  @available(iOS 11.0, *)
  func setObjects<T>(_ objects: [T]) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting
  @available(iOS 11.0, *)
  func setObjects<T>(_ objects: [T], localOnly: Bool, expirationDate: Date?) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting
}
@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.OptionsKey")
typealias UIPasteboardOption = UIPasteboard.OptionsKey
extension UIPasteboard {
  @available(iOS 10.0, *)
  struct OptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  class let changedNotification: NSNotification.Name
  class let changedTypesAddedUserInfoKey: String
  class let changedTypesRemovedUserInfoKey: String
  class let removedNotification: NSNotification.Name
  class var typeListString: NSArray
  class var typeListURL: NSArray
  class var typeListImage: NSArray
  class var typeListColor: NSArray
  @available(iOS 10.0, *)
  class let typeAutomatic: String
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
  @available(iOS 14.0, *)
  struct DetectionPattern : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
    typealias RawValue = String
    typealias _ObjectiveCType = NSString
  }
}
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIPasteboardOption.expirationDate")
let UIPasteboardOptionExpirationDate: UIPasteboard.OptionsKey
extension UIPasteboard.OptionsKey {
  @available(iOS 10.0, *)
  static let expirationDate: UIPasteboard.OptionsKey
  @available(iOS 10.0, *)
  static let localOnly: UIPasteboard.OptionsKey
}
@available(iOS 10.0, *)
@available(swift, obsoleted: 3, renamed: "UIPasteboardOption.localOnly")
let UIPasteboardOptionLocalOnly: UIPasteboard.OptionsKey
@available(swift, obsoleted: 3, renamed: "UIPasteboard.changedNotification")
let UIPasteboardChangedNotification: NSNotification.Name
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.changedTypesAddedUserInfoKey")
let UIPasteboardChangedTypesAddedKey: String
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.changedTypesRemovedUserInfoKey")
let UIPasteboardChangedTypesRemovedKey: String
@available(swift, obsoleted: 3, renamed: "UIPasteboard.removedNotification")
let UIPasteboardRemovedNotification: NSNotification.Name
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.typeListString")
var UIPasteboardTypeListString: NSArray
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.typeListURL")
var UIPasteboardTypeListURL: NSArray
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.typeListImage")
var UIPasteboardTypeListImage: NSArray
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.typeListColor")
var UIPasteboardTypeListColor: NSArray
@available(iOS 10.0, *)
@available(swift, obsoleted: 4.2, renamed: "UIPasteboard.typeAutomatic")
let UIPasteboardTypeAutomatic: String
