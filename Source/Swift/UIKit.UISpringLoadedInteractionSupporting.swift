@_exported import Foundation

@available(iOS 11.0, *)
protocol UISpringLoadedInteractionSupporting : NSObjectProtocol {
  @available(iOS 11.0, *)
  var isSpringLoaded: Bool { get set }
  @available(iOS 11.0, *)
  @available(swift, obsoleted: 3, renamed: "isSpringLoaded")
  var springLoaded: Bool { get set }
}
