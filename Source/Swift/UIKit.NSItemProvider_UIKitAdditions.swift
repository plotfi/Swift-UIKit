@_exported import Foundation

@available(swift, obsoleted: 4.2, renamed: "NSItemProvider.PreferredPresentationStyle")
typealias UIPreferredPresentationStyle = NSItemProvider.PreferredPresentationStyle
extension NSItemProvider {
  enum PreferredPresentationStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    typealias RawValue = Int
    case unspecified
    @available(swift, obsoleted: 3, renamed: "unspecified")
    static var Unspecified: NSItemProvider.PreferredPresentationStyle { get }
    case inline
    @available(swift, obsoleted: 3, renamed: "inline")
    static var Inline: NSItemProvider.PreferredPresentationStyle { get }
    case attachment
    @available(swift, obsoleted: 3, renamed: "attachment")
    static var Attachment: NSItemProvider.PreferredPresentationStyle { get }
  }
}
extension NSItemProvider {
  @available(iOS 11.0, *)
  var teamData: Data?
  @available(iOS 11.0, *)
  var preferredPresentationSize: CGSize
  @available(iOS 11.0, *)
  var preferredPresentationStyle: NSItemProvider.PreferredPresentationStyle
}
@available(iOS 11.0, *)
protocol UIItemProviderPresentationSizeProviding : NSObjectProtocol {
  var preferredPresentationSizeForItemProvider: CGSize { get }
}
